using System.ComponentModel.DataAnnotations;

namespace WebLinhKienDienTu.Models
{
    public class CategoryModel
    {
        [Key]
        public int Id { get; set; }
        [Required, MinLength(4, ErrorMessage ="Vui lòng nhập vào tên danh mục!")]
        public string Name { get; set; }
        [Required, MinLength(4, ErrorMessage = "Vui lòng nhập vào mô tả danh mục!")]
        public string Description { get; set; }
        public string Slug { get; set; }
        public int Status { get; set; }
    }
}
