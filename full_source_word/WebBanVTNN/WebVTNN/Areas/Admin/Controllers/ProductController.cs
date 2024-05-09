using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;
using X.PagedList;

namespace WebLinhKienDienTu.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class ProductController : Controller
    {
        private readonly DataContext _dataContext;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public ProductController(DataContext dataContext, IWebHostEnvironment webHostEnvironment)
        {
            _dataContext = dataContext;
            _webHostEnvironment = webHostEnvironment;
        }
        public async Task<IActionResult> Index(int page = 1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 3;
            var product = _dataContext.Products.Where(p=>p.IsDelete!=1).
                OrderByDescending(p => p.Id).Include(p => p.Category).Include(p => p.Brand).ToPagedList(page, pageSize);
            return View(product);
        }

        public async Task<IActionResult> Restore(int page = 1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 3;
            var product = _dataContext.Products.Where(p => p.IsDelete == 1).
                OrderByDescending(p => p.Id).Include(p => p.Category).Include(p => p.Brand).ToPagedList(page, pageSize);
            return View(product);
        }

        [HttpGet]
        public IActionResult Add()
        {
            ViewBag.Categories = new SelectList(_dataContext.Categories, "Id", "Name");
            ViewBag.Brands = new SelectList(_dataContext.Brands, "Id", "Name");
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Add([Bind("Name, Price, Description, CategoryId, BrandId, ImageUpload")] ProductModel product)
        {
            ViewBag.Categories = new SelectList(_dataContext.Categories, "Id", "Name", product.CategoryId);
            ViewBag.Brands = new SelectList(_dataContext.Brands, "Id", "Name", product.BrandId);

            if (ModelState.IsValid)
            {
                product.Slug = product.Name.Replace(" ", "-");
                var slug = await _dataContext.Products.FirstOrDefaultAsync(p => p.Slug == product.Slug);
                if (slug != null)
                {
                    ModelState.AddModelError("", "Sản phẩm đã tôn tại trong hệ thống");
                    return View(product);
                }

                if (product.ImageUpload != null)
                {
                    string uploadDir = Path.Combine(_webHostEnvironment.WebRootPath, "media/products");
                    string imageName = Guid.NewGuid().ToString() + "_" + product.ImageUpload.FileName;
                    string filePath = Path.Combine(uploadDir, imageName);

                    FileStream fs = new FileStream(filePath, FileMode.Create);
                    await product.ImageUpload.CopyToAsync(fs);
                    fs.Close();
                    product.Image = imageName;
                }
                _dataContext.Add(product);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Đã thêm sản phẩm vào thành công!";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["error"] = "Model đã bị lỗi";
                List<string> errors = new List<string>();
                foreach (var value in ModelState.Values)
                {
                    foreach (var error in value.Errors)
                    {
                        errors.Add(error.ErrorMessage);
                    }
                }

                string errorMessage = string.Join("\n", errors);
                return BadRequest(errorMessage);
            }
        }
        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            ProductModel product = await _dataContext.Products.FindAsync(id);
            ViewBag.Categories = new SelectList(_dataContext.Categories, "Id", "Name", product.CategoryId);
            ViewBag.Brands = new SelectList(_dataContext.Brands, "Id", "Name", product.BrandId);
            return View(product);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, ProductModel product)
        {
            ViewBag.Categories = new SelectList(_dataContext.Categories, "Id", "Name", product.CategoryId);
            ViewBag.Brands = new SelectList(_dataContext.Brands, "Id", "Name", product.BrandId);

            if (ModelState.IsValid)
            {
                product.Slug = product.Name.Replace(" ", "-");

                if (product.ImageUpload != null)
                {
                    string uploadDir = Path.Combine(_webHostEnvironment.WebRootPath, "media/products");
                    string imageName = Guid.NewGuid().ToString() + "_" + product.ImageUpload.FileName;
                    string filePath = Path.Combine(uploadDir, imageName);

                    FileStream fs = new FileStream(filePath, FileMode.Create);
                    await product.ImageUpload.CopyToAsync(fs);
                    fs.Close();
                    product.Image = imageName;
                }
                _dataContext.Update(product);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Đã cập nhật sản phẩm vào thành công!";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["error"] = "Model đã bị lỗi";
                List<string> errors = new List<string>();
                foreach (var value in ModelState.Values)
                {
                    foreach (var error in value.Errors)
                    {
                        errors.Add(error.ErrorMessage);
                    }
                }
                string errorMessage = string.Join("\n", errors);
                return BadRequest(errorMessage);
            }
        }
        public async Task<IActionResult> Delete(int id)
        {
            ProductModel product = await _dataContext.Products.FindAsync(id);
            //if (!string.Equals(product.Image, "noname.jpg"))
            //{
            //    string uploadDir = Path.Combine(_webHostEnvironment.WebRootPath, "media/products");
            //    string oldFileImage = Path.Combine(uploadDir, product.Image);
            //    if (System.IO.File.Exists(oldFileImage))
            //    {
            //        System.IO.File.Delete(oldFileImage);
            //    }
               
            //}
            product.IsDelete = 1;
            _dataContext.Products.Update(product);
            await _dataContext.SaveChangesAsync();
            TempData["success"] = "Đã xóa sản phẩm thành công";
            return RedirectToAction("Index");
        }
        public async Task<IActionResult> ExcuteRestore(int id)
        {
            ProductModel product = await _dataContext.Products.FindAsync(id);
            product.IsDelete = 0;
            _dataContext.Products.Update(product);
            await _dataContext.SaveChangesAsync();
            TempData["success"] = "Đã khôi phục sản phẩm thành công";
            return RedirectToAction("Index");
        }
        public async Task<IActionResult> AddFromExcel()
        {

            return RedirectToAction("Index", "Product");
        }
    }
}
