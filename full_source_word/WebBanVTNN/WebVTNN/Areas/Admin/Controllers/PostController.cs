using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Ripository;
using X.PagedList;

namespace WebLinhKienDienTu.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class PostController : Controller
    {
        private readonly DataContext _dataContext;
        public PostController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public async Task<IActionResult> Index(int page = 1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 3;
            var post = _dataContext.Posts.Where(p=>p.IsDelete!=1).OrderByDescending(p => p.Id).ToPagedList(page, pageSize);
            return View(post);
        }
        public async Task<IActionResult> RestorePost(int page = 1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 3;
            var post = _dataContext.Posts.Where(p => p.IsDelete == 1).OrderByDescending(p => p.Id).ToPagedList(page, pageSize);
            return View(post);
        }
        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Add(PostModel posts)
        {
            if (ModelState.IsValid)
            {
                string user = User.Identity.Name;
                DateTime time = DateTime.Now;
                posts.UserID = user;
                posts.CreatedAt= time;

                _dataContext.Add(posts);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Đã thêm danh mục vào thành công!";
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
            PostModel post = await _dataContext.Posts.FindAsync(id);
            post.IsDelete = 1;
            _dataContext.Posts.Update(post);
            await _dataContext.SaveChangesAsync();
            TempData["success"] = "Đã xóa bài viết thành công";
            return RedirectToAction("Index");
        }
        public async Task<IActionResult> ExcuteRestore(int id)
        {
            PostModel post = await _dataContext.Posts.FindAsync(id);
            post.IsDelete = 0;
            _dataContext.Posts.Update(post);
            await _dataContext.SaveChangesAsync();
            TempData["success"] = "Đã khôi phục bài viết thành công";
            return RedirectToAction("Index");
        }
        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            PostModel post = await _dataContext.Posts.FindAsync(id);
            return View(post);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, PostModel post)
        {
            if (ModelState.IsValid)
            {
                _dataContext.Update(post);
                await _dataContext.SaveChangesAsync();
                TempData["success"] = "Đã cập nhật bài viết thành công!";
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
    }
}
