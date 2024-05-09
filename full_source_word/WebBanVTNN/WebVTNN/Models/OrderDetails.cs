using System.ComponentModel.DataAnnotations.Schema;

namespace WebLinhKienDienTu.Models
{
    public class OrderDetails
    {
        public int Id { get; set; }
        public string OrderName { get; set; }
        public string OrderCode { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }

        [ForeignKey("ProductId")]
        public int ProductId { get; set; } 
        public ProductModel Product { get; set; }
    }
}
