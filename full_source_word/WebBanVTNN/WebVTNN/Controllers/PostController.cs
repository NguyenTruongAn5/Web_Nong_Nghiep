using Microsoft.AspNetCore.Mvc;
using WebLinhKienDienTu.Ripository;
using X.PagedList;

namespace WebLinhKienDienTu.Controllers
{
    public class PostController : Controller
    {
        private readonly DataContext _dataContext;
        public PostController(DataContext dataContext) 
        {
            _dataContext= dataContext;
        }
        public async Task<IActionResult> Index(int page = 1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 12;
            var post = _dataContext.Posts.Where(p=>p.IsDelete!=1).OrderByDescending(p=> p.Id).ToPagedList(page, pageSize);
            return View(post);
        }
        public async Task<IActionResult> Details(int id)
        {
            var post = _dataContext.Posts.OrderByDescending(x => x.Id == id).FirstOrDefault();
            var postViewBag = _dataContext.Posts.OrderByDescending(p => p.Id).ToList();
            ViewBag.postViewBag = postViewBag;
            return View(post);
        }
    }
}
