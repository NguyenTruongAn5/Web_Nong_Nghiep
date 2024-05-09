using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace WebLinhKienDienTu.Ripository.Components
{
    public class BrandsViewComponent: ViewComponent
    {
        private readonly DataContext _dataContext;
        public BrandsViewComponent(DataContext dataContext)
        {
            _dataContext= dataContext;
        }
        public async Task<IViewComponentResult> InvokeAsync() => View( await _dataContext.Brands.ToListAsync());
    }
}
