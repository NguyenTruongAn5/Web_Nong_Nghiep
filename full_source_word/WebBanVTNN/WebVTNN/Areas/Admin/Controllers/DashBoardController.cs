using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using WebLinhKienDienTu.Ripository;

namespace WebLinhKienDienTu.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class DashBoardController : Controller
    {
        private readonly DataContext _dataContext;
        public DashBoardController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public IActionResult Index()
        {
            var orderDetail = _dataContext.OrderDetails.ToList();
            var quantityTog = _dataContext.OrderDetails.Sum(x => x.Quantity);
            var priceTog = _dataContext.OrderDetails.Sum(x => x.Price);
            var commentTog = _dataContext.Comments.Count();

            var commentCountsByMonth = _dataContext.Comments
            .GroupBy(c => new { Month = c.CreateDate.Month, Year = c.CreateDate.Year })
            .Select(group => new { MonthYear = group.Key, Count = group.Count() })
            .ToList();

            var orderCountsByMonth = _dataContext.Orders
            .GroupBy(o => new { Month = o.CretaeDate.Month, Year = o.CretaeDate.Year })
            .Select(group => new { MonthYear = group.Key, Count = group.Count() })
            .ToList();

            ViewBag.quantityTog = quantityTog;
            ViewBag.priceTog = priceTog;
            ViewBag.commentTog = commentTog;
            ViewBag.commentCountsByMonth = commentCountsByMonth;
            ViewBag.orderCountsByMonth = orderCountsByMonth;

            return View(orderDetail);
        }
    }
}
