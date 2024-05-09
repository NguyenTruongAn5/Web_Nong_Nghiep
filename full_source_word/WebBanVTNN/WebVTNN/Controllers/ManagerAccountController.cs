using DinkToPdf.Contracts;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Text;
using WebLinhKienDienTu.Ripository;
using X.PagedList;
using DinkToPdf;
using DinkToPdf.Contracts;
using InTheHand.Net;
using InTheHand.Net.Bluetooth;
using InTheHand.Net.Sockets;
using System.Security.Claims;

namespace WebLinhKienDienTu.Controllers
{
    public class ManagerAccountController : Controller
    {
        private readonly DataContext _dataContext;
        private IConverter _pdfConverter;
        public ManagerAccountController(DataContext dataContext, IConverter pdfConverter)
        {
            _dataContext = dataContext;
            _pdfConverter = pdfConverter;
        }
        public async Task<IActionResult> Index(int page = 1)
        {
            int pageSize = 3;
            string email = User.FindFirst(ClaimTypes.Email)?.Value;

            page = page < 1 ? 1 : page;
            var order = _dataContext.Orders.Where(x=>x.OderName == email).OrderByDescending(p => p.Id).ToPagedList(page, pageSize);
            return View(order);
        }
        public async Task<IActionResult> ViewOrder(string orderCode)
        {
            var order =
                await _dataContext.OrderDetails.Include(p => p.Product).Where(p => p.OrderCode == orderCode).ToListAsync();
            return View(order);
        }
        public IActionResult Delete(int id)
        {
            var order = _dataContext.OrderDetails.Where(o=>o.Id== id).FirstOrDefault();
            if (order != null) 
            {
                _dataContext.OrderDetails.Remove(order);
                _dataContext.SaveChanges();
            }
            return RedirectToAction("Index", "ManagerAccount");
        }
        public IActionResult Cancel(int id)
        {
            var order = _dataContext.Orders.Where(o => o.Id == id && o.IsDelete !=1).FirstOrDefault();
            if (order != null)
            {
                _dataContext.Orders.Remove(order);
                _dataContext.SaveChanges();
            }
            return RedirectToAction("Index", "ManagerAccount");
        }
        public IActionResult AccountSetting()
        {
            return View();
        }
        public IActionResult ExportToCSV()
        {
            var builder = new StringBuilder();
            builder.AppendLine("Id,OrderName,OrderCode,Price,Quantity,Product");
            var orderList = _dataContext.OrderDetails.Include(p => p.Product).ToList();
            foreach (var order in orderList)
            {
                builder.AppendLine($"{order.Id},{order.OrderName},{order.OrderCode}, {order.Price}, " +
                    $"{order.Quantity},{order.Product.Name}");
            }
            return File(Encoding.UTF8.GetBytes(builder.ToString()), "text/csv", "OrderDetails.csv");
        }
        public IActionResult ExportPDF()
        {
            var htmlContent = System.IO.File.ReadAllText("Views/ManagerAccount/PrintReview.cshtml");

            var document = new HtmlToPdfDocument()
            {
                GlobalSettings = {
                PaperSize = PaperKind.A4,
                Orientation = Orientation.Portrait,
            },
                Objects = {
                new ObjectSettings()
                {
                    PagesCount = true,
                    HtmlContent = htmlContent,
                }
            }
            };

            var pdfBytes = _pdfConverter.Convert(document);

            return File(pdfBytes, "application/pdf", "HoaDon.pdf");
        }
        public IActionResult PrintReview(string id)
        {
            var orderDetail = _dataContext.OrderDetails.Where(x=>x.OrderCode== id).ToList();
            if(orderDetail != null)
            {
                return View(orderDetail);
            }
            else
            {
                return RedirectToAction("Index", "ManagerAccount");
            }
        }
        public IActionResult PrintPdfViaBluetooth(string pdfFilePath)
        {
            BluetoothAddress printerBluetoothAddress = new BluetoothAddress(0x1234567890AB);

            try
            {
                BluetoothClient bluetoothClient = new BluetoothClient();
                BluetoothEndPoint endpoint = new BluetoothEndPoint(printerBluetoothAddress, BluetoothService.SerialPort);
                bluetoothClient.Connect(endpoint);

                Stream outputStream = bluetoothClient.GetStream();

                using (FileStream pdfFileStream = System.IO.File.OpenRead(pdfFilePath))
                {
                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    while ((bytesRead = pdfFileStream.Read(buffer, 0, buffer.Length)) > 0)
                    {
                        outputStream.Write(buffer, 0, bytesRead);
                    }
                }

                outputStream.Close();
                bluetoothClient.Close();

                ViewBag.Message = "In thành công!";
            }
            catch (Exception ex)
            {
                ViewBag.Message = $"Lỗi in: {ex.Message}";
            }

            return View();
        }
    }
}
