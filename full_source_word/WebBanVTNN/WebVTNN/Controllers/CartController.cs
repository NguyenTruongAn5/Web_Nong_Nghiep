using Microsoft.AspNetCore.Mvc;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Models.ViewModels;
using WebLinhKienDienTu.Ripository;

namespace WebLinhKienDienTu.Controllers
{
    public class CartController:Controller
    {
        private readonly DataContext _dataContext;
        public CartController(DataContext dataContext)
        {
            _dataContext= dataContext;
        }
        public IActionResult Index()
        {
            List<CartItemModel> cartItems = 
                HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
            CartItemViewModel cartVM = new CartItemViewModel()
            {
                CartItems = cartItems,
                GrandTotal = cartItems.Sum(x => x.Quantity * x.Price)
            };
            return View(cartVM);
        }
        public async Task<IActionResult> Add(int Id)
        {
            ProductModel product = await _dataContext.Products.FindAsync(Id);
			List<CartItemModel> cart =
				HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
            CartItemViewModel cartVM = new CartItemViewModel();
			
            CartItemModel cartItems = cart.Where(c=>c.ProductId== Id).FirstOrDefault();

			if (cartItems == null)
            {
                cart.Add(new CartItemModel(product));
            }
            else
            {
                cartItems.Quantity += 1;
            }
            HttpContext.Session.SetJson("Cart", cart);
			TempData["success"] = "Add item to cart Successfully";
            return Redirect(Request.Headers["Referer"].ToString());
        }
		public IActionResult Descrease(int Id)
		{
            List<CartItemModel> cart = HttpContext.Session.GetJson<List<CartItemModel>>("Cart");

			CartItemModel cartItems = cart.Where(c => c.ProductId == Id).FirstOrDefault();

			if(cartItems.Quantity > 1)
            {
                --cartItems.Quantity;
            }
            else
            {
                cart.RemoveAll(p=>p.ProductId== Id);
            }

            if(cart.Count == 0)
            {
                HttpContext.Session.Remove("Cart");
            }
            else
            {
                HttpContext.Session.SetJson("Cart", cart);
            }
            TempData["success"] = "Descrease quantity item to cart Successfully";
            return RedirectToAction("Index");
		}
		public IActionResult Inscrease(int Id)
		{
			List<CartItemModel> cart = HttpContext.Session.GetJson<List<CartItemModel>>("Cart");

			CartItemModel cartItems = cart.Where(c => c.ProductId == Id).FirstOrDefault();

			if (cartItems.Quantity >= 1)
			{
				++cartItems.Quantity;
			}
			else
			{
				cart.RemoveAll(p => p.ProductId == Id);
			}

			if (cart.Count == 0)
			{
				HttpContext.Session.Remove("Cart");
			}
			else
			{
				HttpContext.Session.SetJson("Cart", cart);
			}
            TempData["success"] = "Inscrease quantity item to cart Successfully";
            return RedirectToAction("Index");
		}
		public IActionResult Remove(int Id)
		{
			List<CartItemModel> cart = HttpContext.Session.GetJson<List<CartItemModel>>("Cart");

			cart.RemoveAll(p => p.ProductId == Id);
			if (cart.Count == 0)
			{
				HttpContext.Session.Remove("Cart");
			}
			else
			{
				HttpContext.Session.SetJson("Cart", cart);
			}
            TempData["success"] = "Remove item to cart Successfully";
            return RedirectToAction("Index");
		}
		public IActionResult Clear(int Id)
		{
			HttpContext.Session.Remove("Cart");
            TempData["success"] = "Clear item to cart Successfully";
            return RedirectToAction("Index");
		}
	}
}
