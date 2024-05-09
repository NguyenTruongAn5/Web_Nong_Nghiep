using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebLinhKienDienTu.Models
{
    public class PostModel
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public string Content { get; set; }
        [ForeignKey("UserID")]
        public string UserID { get; set; }
        public DateTime CreatedAt { get; set; } = DateTime.Now;
        public int IsDelete { get; set; }
    }
}
