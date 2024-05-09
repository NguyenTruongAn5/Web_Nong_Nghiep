using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;

namespace WebLinhKienDienTu.Controllers
{
    public class CategoryController: Controller
    {
        private readonly DataContext _dataContext;
        public CategoryController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public async Task<IActionResult> Index(string slug = "")
        {
            CategoryModel category = _dataContext.Categories.Where(p=> p.Slug == slug).FirstOrDefault();
            if (category == null) return RedirectToAction("Index");

            var productByCategory = _dataContext.Products.Where(p => p.CategoryId== category.Id && p.IsDelete!=1);

            return View(await productByCategory.OrderByDescending(p=>p.Id).ToListAsync());
        }
    }
}
