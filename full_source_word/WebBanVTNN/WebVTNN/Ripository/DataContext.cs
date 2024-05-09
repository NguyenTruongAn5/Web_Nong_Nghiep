using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;

namespace WebLinhKienDienTu.Ripository
{
    public class DataContext:IdentityDbContext<AppUserModel>
    {
        public DataContext(DbContextOptions<DataContext> options):base(options) 
        {

        }
        public DbSet<BrandModel> Brands { get; set; }
        public DbSet<ProductModel> Products { get; set; }
        public DbSet<CategoryModel> Categories { get; set; }
        public DbSet<OrderDetails> OrderDetails { get; set; }
        public DbSet<OderModel> Orders { get; set; }
        public DbSet<AppUserModel> appUserModels { get; set; }
        public DbSet<CommentModel> Comments { get; set; }
        public DbSet<PostModel> Posts { get; set; }
    }
}
