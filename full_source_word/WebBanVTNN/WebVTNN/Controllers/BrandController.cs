using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;

namespace Web_Eshop.Controllers
{
    public class BrandController: Controller
    {
        private readonly DataContext _dataContext;
        public BrandController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public async Task<IActionResult> Index(string slug = "")
        {
            BrandModel brand = _dataContext.Brands.Where(p=> p.Slug == slug).FirstOrDefault();
            if (brand == null) return RedirectToAction("Index");

            var productByBrand = _dataContext.Products.Where(p => p.BrandId == brand.Id && p.IsDelete!=1);

            return View(await productByBrand.OrderByDescending(p=>p.Id).ToListAsync());
        }
    }
}
