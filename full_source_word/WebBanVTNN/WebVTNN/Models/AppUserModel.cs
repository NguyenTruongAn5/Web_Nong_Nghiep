using Microsoft.AspNetCore.Identity;

namespace WebLinhKienDienTu.Models
{
    public class AppUserModel: IdentityUser
    {
        public string Occupation { get; set; }
    }
}
