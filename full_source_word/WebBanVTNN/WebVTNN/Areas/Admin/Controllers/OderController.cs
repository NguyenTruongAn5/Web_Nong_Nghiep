using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MimeKit;
using MailKit.Net.Smtp;
using SmtpClient = MailKit.Net.Smtp.SmtpClient;
using WebLinhKienDienTu.Ripository;
using X.PagedList;

namespace WebLinhKienDienTu.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class OderController : Controller
    {
        private readonly DataContext _dataContext;
        public OderController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public async Task<IActionResult> Index(int page = 1)
        {
            int pageSize = 3;
            page = page < 1 ? 1 : page;
            var order = _dataContext.Orders.OrderByDescending(p => p.Id).ToPagedList(page, pageSize);
            return View(order);
        }
        public async Task<IActionResult> ViewOrder(string orderCode)
        {
            var order =
                await _dataContext.OrderDetails.Include(p => p.Product).Where(p => p.OrderCode == orderCode).ToListAsync();
            return View(order);
        }
        public async Task<IActionResult> ApproveApply(string orderCode)
        {
            var order =
                await _dataContext.Orders.Where(o => o.OderCode == orderCode).SingleOrDefaultAsync();
            if (order != null)
            {
                order.Status = 0;
            }
            _dataContext.Orders.Update(order);

            string nameUser = "Quý khách!";
            string subject = "An Nguyễn kính chào quý khách!";
            string message = $"Đơn hàng {order.Id} của bạn đã được duyệt! Vui lòng đợi giao hàng.";

            SendEmail(message, nameUser, order.OderName, subject);

            _dataContext.SaveChangesAsync();
            return Redirect("Index");
        }
        public void SendEmail(string message, string nameUser, string emailUser, string subject)
        {
            var emailMessage = new MimeMessage();

            emailMessage.From.Add(new MailboxAddress("An Nguyễn", "nta190502@gmail.com"));
            emailMessage.To.Add(new MailboxAddress(nameUser, emailUser));
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

    }
}
