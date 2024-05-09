using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebLinhKienDienTu.Models
{
    public class CommentModel
    {
        [Key]
        public int Id { get; set; }
        public string Comments { get; set; }
        public int ProductId { get; set; }
        [ForeignKey("ProductId")]
        public ProductModel Product { get; set; }
        [ForeignKey("UserID")]
        public string UserID { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
