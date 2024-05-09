using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using WebLinhKienDienTu.Ripository.Validation;

namespace WebLinhKienDienTu.Models
{
    public class ProductModel
    {
        [Key]
        public int Id { get; set; }
        [Required, MinLength(4, ErrorMessage = "Vui lòng nhập vào tên sản phẩm!!!")]
        public string Name { get; set; }
        [Required, MinLength(4, ErrorMessage = "Vui lòng nhập vào mô tả sản phẩm!!!")]
        public string Description { get; set; }
        public string Slug { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập giá sản phẩm.")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Giá sản phẩm phải lớn hơn 0."), Column(TypeName = "decimal(18, 2)")]
        public decimal Price { get; set; }

        public int CategoryId { get; set; }
        public int BrandId { get; set; }
        public CategoryModel Category { get; set; }
        public BrandModel Brand { get; set; }
        public string Image { get; set; } = "noname.jpg";

        [NotMapped]
        [FileExtension]
        public IFormFile ImageUpload { get; set; }
        public int IsDelete { get; set; }
    }
}
