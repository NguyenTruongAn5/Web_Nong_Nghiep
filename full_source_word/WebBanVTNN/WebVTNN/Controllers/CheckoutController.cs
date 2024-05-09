using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualBasic.CompilerServices;
using System.Web;
using System.Security.Claims;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Models.ViewModels;
using WebLinhKienDienTu.Ripository;
using Microsoft.AspNetCore.Http;
using WebLinhKienDienTu.Models.Libray;
using static System.Runtime.CompilerServices.RuntimeHelpers;
using System;

namespace Web_Eshop.Controllers
{
    public class CheckoutController : Controller
    {
        private readonly DataContext _dataContext;
        private readonly IConfiguration _configuration;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public CheckoutController(DataContext dataContext, IConfiguration config, IHttpContextAccessor httpContextAccessor)
        {
            _dataContext = dataContext;
            _configuration = config;
            _httpContextAccessor = httpContextAccessor;
        }

        public IActionResult Index()
        {
            var userEmail = User.FindFirstValue(ClaimTypes.Email);
            ViewBag.Email = userEmail;
            List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
            CartItemViewModel cartVM = new CartItemViewModel()
            {
                CartItems = cartItems,
                GrandTotal = cartItems.Sum(x => x.Quantity * x.Price)
            };
            return View(cartVM);
        }

        public IActionResult Checkout()
        {
            var userEmail = User.FindFirstValue(ClaimTypes.Email);
            if (userEmail == null)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {
                var orderCode = Guid.NewGuid().ToString();

                var orderItem = new OderModel();

                orderItem.Status = 1;
                orderItem.OderName = userEmail;
                orderItem.OderCode = orderCode;
                orderItem.TypeCheckout = 0;
                orderItem.IsDelete = 0;
                orderItem.CretaeDate = DateTime.Now;

                _dataContext.Add(orderItem);
                _dataContext.SaveChanges();

                List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
                foreach (var cart in cartItems)
                {
                    var orderDetails = new OrderDetails();
                    orderDetails.OrderCode = orderCode;
                    orderDetails.ProductId = cart.ProductId;
                    orderDetails.Price = cart.Price;
                    orderDetails.Quantity = cart.Quantity;
                    _dataContext.Add(orderDetails);
                }
                _dataContext.SaveChanges();

                HttpContext.Session.Remove("Cart");
                TempData["success"] = "Đã tạo đơn hàng thành công. Vui lòng chờ duyệt";
                return RedirectToAction("Index", "Home");
            }
        }
        public ActionResult VnPayCheckout()
        {
            string vnp_Returnurl = "https://localhost:44389/Checkout/PaymentConfirm"; 
            string vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html"; 
            string vnp_TmnCode = "S7OAR1KO"; 
            string vnp_HashSecret = "NZOSCRNPPIMRFQQPVHBHYJGJBVTOKPKS";

            List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
            decimal amount = 0;
            foreach (var cart in cartItems)
            {
                amount += cart.Total;
            }
            int formatAmount = Convert.ToInt32(amount);
            PayLib pay = new PayLib();

            pay.AddRequestData("vnp_Version", "2.1.0"); 
            pay.AddRequestData("vnp_Command", "pay"); 
            pay.AddRequestData("vnp_TmnCode", vnp_TmnCode); 
            pay.AddRequestData("vnp_Amount", (formatAmount * 100).ToString());
            pay.AddRequestData("vnp_BankCode", "NCB"); 
            pay.AddRequestData("vnp_CreateDate", DateTime.Now.ToString("yyyyMMddHHmmss")); 
            pay.AddRequestData("vnp_CurrCode", "USD"); 
            pay.AddRequestData("vnp_IpAddr", WebLinhKienDienTu.Models.Libray.Utils.GetIpAddress(_httpContextAccessor)); 
            pay.AddRequestData("vnp_Locale", "vn"); 
            pay.AddRequestData("vnp_OrderInfo", "Thanh toan don hang"); 
            pay.AddRequestData("vnp_OrderType", "other"); 
            pay.AddRequestData("vnp_ReturnUrl", vnp_Returnurl); 
            pay.AddRequestData("vnp_TxnRef", DateTime.Now.Ticks.ToString()); 

            string paymentUrl = pay.CreateRequestUrl(vnp_Url, vnp_HashSecret);

            return Redirect(paymentUrl);
        }
        public ActionResult PaymentConfirm()
        {
            var userEmail = User.FindFirstValue(ClaimTypes.Email);
            if (HttpContext.Request.Query.Count > 0)
            {
                string vnp_HashSecret = "NZOSCRNPPIMRFQQPVHBHYJGJBVTOKPKS";
                var vnpayData = HttpContext.Request.Query;
                PayLib pay = new PayLib();

                var orderCode = Guid.NewGuid().ToString();

                var orderItem = new OderModel();

                orderItem.Status = 1;
                orderItem.OderName = userEmail;
                orderItem.TypeCheckout = 1;
                orderItem.IsDelete = 0;
                orderItem.OderCode = orderCode;
                orderItem.CretaeDate = DateTime.Now;
                _dataContext.Add(orderItem);
                _dataContext.SaveChanges();

                List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
                foreach (var cart in cartItems)
                {
                    var orderDetails = new OrderDetails();
                    orderDetails.OrderCode = orderCode;
                    orderDetails.ProductId = cart.ProductId;
                    orderDetails.Price = cart.Price;
                    orderDetails.Quantity = cart.Quantity;
                    _dataContext.Add(orderDetails);
                }
                _dataContext.SaveChanges();

                foreach (var key in vnpayData.Keys)
                {
                    if (key.StartsWith("vnp_"))
                    {
                        pay.AddResponseData(key, vnpayData[key]);
                    }
                }

                long orderId = Convert.ToInt64(pay.GetResponseData("vnp_TxnRef")); 
                long vnpayTranId = Convert.ToInt64(pay.GetResponseData("vnp_TransactionNo")); 
                string vnp_ResponseCode = pay.GetResponseData("vnp_ResponseCode"); 
                string vnp_SecureHash = vnpayData["vnp_SecureHash"];

                bool checkSignature = pay.ValidateSignature(vnp_SecureHash, vnp_HashSecret); 

                if (checkSignature)
                {
                    if (vnp_ResponseCode == "00")
                    {
                        ViewBag.Message = "Thanh toán thành công hóa đơn " + orderId + " | Mã giao dịch: " + vnpayTranId;
                        _dataContext.SaveChanges();

                        HttpContext.Session.Remove("Cart");
                        TempData["success"] = "Đã tạo đơn hàng thành công. Vui lòng chờ duyệt";
                    }
                    else
                    {
                        ViewBag.Message = "Có lỗi xảy ra trong quá trình xử lý hóa đơn " + orderId + " | Mã giao dịch: " + vnpayTranId + " | Mã lỗi: " + vnp_ResponseCode;
                    }
                }
                else
                {
                    ViewBag.Message = "Có lỗi xảy ra trong quá trình xử lý";
                }
            }
            
            return RedirectToAction("Index", "Checkout");
        }
    }
}
