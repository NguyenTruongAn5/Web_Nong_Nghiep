using Microsoft.EntityFrameworkCore;
using WebLinhKienDienTu.Models;

namespace WebLinhKienDienTu.Ripository
{
    public class SeedData
    {
        public static void SeedingData(DataContext _context)
        {
            _context.Database.Migrate();
           /* if (!_context.Products.Any())
            {
                *//*CategoryModel macbook = new CategoryModel()
                { Name = "Apple", Slug = "apple", Description = "Apple is more", Status = 1 };
                CategoryModel pc = new CategoryModel()
                { Name = "Samsung", Slug = "samsung", Description = "Samsung is more", Status = 1 };
                BrandModel apple = new BrandModel() 
                { Name = "Dell", Slug = "dell", Description = "Dell is the best", Status = 1 };
                BrandModel samsung = new BrandModel()
                { Name = "sony", Slug = "sony", Description = "sony is the best", Status = 1 };

                _context.AddRange(
                     new ProductModel()
                     {
                         Name = "Macbook",
                         Slug = "macbook",
                         Description = "Macbook is best",
                         Image = "1.png",
                         CategoryId = 1,
                         BrandId = 1,
                         Category = macbook,
                         Brand = apple,
                         Price = 1111
                     },
                      new ProductModel()
                      {
                          Name = "PC",
                          Slug = "pc",
                          Description = "Pc is best",
                          Image = "1.png",
                          CategoryId = 2,
                          BrandId = 2,
                          Category = pc,
                          Brand = samsung,
                          Price = 1111
                      }*//*
                );
                _context.SaveChanges(); 
            }*/
            _context.SaveChanges();
        }
    }
}
