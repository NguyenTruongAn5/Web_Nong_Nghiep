using System.ComponentModel.DataAnnotations;

namespace WebLinhKienDienTu.Models
{
	public class UserModel
	{
		public int Id { get; set; }

		[Required (ErrorMessage ="Vui lòng nhập vào tên!")]
		public string UserName { get; set; }
		[Required(ErrorMessage = "Vui lòng nhập vào địa chỉ Email!"), EmailAddress]
		public string Email { get; set; }
		[DataType(DataType.Password), Required(ErrorMessage = "Vui lòng nhập vào mật khẩu!")]
		public string Password { get; set; }
	}
}
