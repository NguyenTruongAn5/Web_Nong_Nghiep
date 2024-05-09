using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Net.Mail;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;
using X.PagedList;
using MimeKit;
using MailKit.Net.Smtp;
using SmtpClient = MailKit.Net.Smtp.SmtpClient;

namespace WebLinhKienDienTu.Controllers
{
    public class HomeController : Controller
    {
        private readonly DataContext _dataContext;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger, DataContext dataContext)
        {
            _logger = logger;
            _dataContext = dataContext;
        }

        public IActionResult Index(int page=1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 6;
            var product = _dataContext.Products.Include(p => p.Brand)
							.Include(p => p.Category).Where(p=>p.IsDelete!=1).ToPagedList(page, pageSize);
			return View(product);
        }

        public IActionResult ContactUs()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error(int statuscode)
        {
            if(statuscode == 404)
            {
                return View("NotFound");
            }
            else
            {
                return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
            }
        }
		public void SendEmail(string message, string nameUser, string emailUser, string subject)
		{
			var emailMessage = new MimeMessage();

			emailMessage.From.Add(new MailboxAddress("An Nguyễn", "nta190502@gmail.com"));
			emailMessage.To.Add(new MailboxAddress(nameUser,emailUser));
			emailMessage.Subject = subject;
			emailMessage.Body = new TextPart("plain")
			{
				Text = message
			};

			using (var client = new SmtpClient())
			{
				client.Connect("smtp.gmail.com", 587, false);
				client.Authenticate("nta190502@gmail.com", "siowuqwylcbjdyqt");
				client.Send(emailMessage);
				client.Disconnect(true);
			}
		}
		public IActionResult InforAbout(string emailUser)
        {
            string nameUser = "Quý khách!";
            string subject = "An Nguyễn kính chào quý khách!";
            string message = "Cửa hàng vật tư nông nghiệp An Nguyễn kinh chào quý khách đây là các thông tin cần thiết mà quý khách cần";

			SendEmail(message, nameUser, emailUser, subject);
			TempData["error"] = "Thông tin đã được gửi đến mail của bạn vui lòng check mail";

			return RedirectToAction("Index", "Home");
        }

	}
}