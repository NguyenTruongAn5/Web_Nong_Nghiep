using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using WebLinhKienDienTu.Ripository;
using X.PagedList;

namespace WebLinhKienDienTu.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class UserController : Controller
    {
        public readonly DataContext _dataContext;
        public UserController(DataContext dataContext)
        {
            _dataContext = dataContext;
        }
        public async Task<IActionResult> Index(int page=1)
        {
            page = page < 1 ? 1 : page;
            int pageSize = 3;
            var user = _dataContext.Users.ToPagedList(page, pageSize);
            return View(user);
        }
        public async Task<IActionResult> Delete(string id)
        {
            var user = _dataContext.Users.Where(u=>u.Id== id).FirstOrDefault();

            _dataContext.Users.Remove(user);

            await _dataContext.SaveChangesAsync();

            return RedirectToAction("Index");
        }
    }
}
