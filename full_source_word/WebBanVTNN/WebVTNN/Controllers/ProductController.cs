using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Security.Claims;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;

namespace WebLinhKienDienTu.Controllers
{
    public class ProductController : Controller
    {
        readonly DataContext _dataContext;
        public ProductController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public IActionResult Index()
        {
            var products = _dataContext.Products.Where(p=>p.IsDelete!=1).ToList();
            return View(products);
        }
        public IActionResult Detail(int id)
        {
            var product = _dataContext.Products.FirstOrDefault(p => p.Id == id && p.IsDelete!=1);
            var comments = _dataContext.Comments.Where(c => c.ProductId == id).ToList();
            var commentCount = _dataContext.Comments.Count(c => c.ProductId == id);

            var productCat = _dataContext.Products.Where(p => p.CategoryId == product.CategoryId).ToList();
            ViewBag.productCat = productCat;

            ViewBag.CommentCount = commentCount;

            var viewModel = new ProductDetailViewModel
            {
                Product = product,
                Comments = comments
            };

            return View(viewModel);
        }

        [HttpGet]
        public IActionResult CreateComment()
        {
            return View();
        }
        [HttpPost]
        public IActionResult CreateComment(int id, CommentModel comment)
        {
            comment.Id = 0;
            if (ModelState.IsValid)
            {
                var userId = User.Identity.Name;

                comment.UserID = userId;
                comment.CreateDate = DateTime.Now;
                comment.ProductId = id;

                _dataContext.Comments.Add(comment);

                _dataContext.SaveChanges();
            }
            return RedirectToAction("Detail", new { id });
        }

    }
}
