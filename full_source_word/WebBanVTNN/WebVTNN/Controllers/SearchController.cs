using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Ripository;
using Microsoft.EntityFrameworkCore.Query;

namespace WebLinhKienDienTu.Controllers
{
    public class SearchController : Controller
    {
		private readonly DataContext _dataContext;
		public SearchController(DataContext dataContext)
		{
			_dataContext = dataContext;
		}
		[HttpGet]
        public IActionResult Index(string value)
        {
            var product = _dataContext.Products
                            .Include(p => p.Brand)
                            .Include(p => p.Category)
                            .Where(p => p.Name.Contains(value) && p.IsDelete!=1).ToList();
            if (ModelState.IsValid && product != null)
			{  
                    return View(product);
            }
			return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public IActionResult SearechSlider(decimal minPrice, decimal maxPrice)
        {
            var productList = _dataContext.Products
                            .Include(p => p.Brand)
                            .Include(p => p.Category).Where(p=>p.Price > minPrice && p.IsDelete != 1 ).ToList();

            if (productList != null)
            {
                return View("Index", productList);
            }

            return RedirectToAction("Index", "Home");
        }


    }
}
