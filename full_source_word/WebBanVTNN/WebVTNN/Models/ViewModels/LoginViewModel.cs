using System.ComponentModel.DataAnnotations;

namespace WebLinhKienDienTu.Models.ViewModels
{
    public class LoginViewModel
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập vào tên!")]
        public string UserName { get; set; }
       
        [DataType(DataType.Password), Required(ErrorMessage = "Vui lòng nhập vào mật khẩu!")]
        public string Password { get; set; }
        public string ReturnUrl { get; set; }
    }
}
