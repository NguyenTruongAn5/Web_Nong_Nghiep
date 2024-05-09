namespace WebLinhKienDienTu.Models
{
	public class OderModel
	{
		public int Id { get; set; }
		public string OderCode { get; set; }
		public string OderName { get; set; }
		public DateTime CretaeDate { get; set;}
		public int Status { get; set; }
		public int TypeCheckout { get; set; }
		public int IsDelete { get; set; }
	}
}
