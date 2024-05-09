using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MimeKit;
using WebLinhKienDienTu.Models;
using WebLinhKienDienTu.Models.ViewModels;
using MimeKit;
using MailKit.Net.Smtp;
using SmtpClient = MailKit.Net.Smtp.SmtpClient;

namespace WebLinhKienDienTu.Controllers
{
    public class AccountController:Controller
    {
		private readonly UserManager<AppUserModel> _userManager;
		private readonly SignInManager<AppUserModel> _signInManager;
		private readonly RoleManager<IdentityRole> _roleManager;

		public AccountController(SignInManager<AppUserModel> signInManager, RoleManager<IdentityRole> roleManager, UserManager<AppUserModel> userManager)
		{
			_userManager = userManager;
			_signInManager = signInManager;
			_roleManager = roleManager;
		}
        [HttpGet]
		public IActionResult Login(string returnUrl) 
        { 
            return View(new LoginViewModel { ReturnUrl = returnUrl}); 
        }
        [HttpPost]
		public async Task<IActionResult> Login(LoginViewModel loginVM)
        {
            if (ModelState.IsValid)
            {
                Microsoft.AspNetCore.Identity.SignInResult result = await _signInManager.PasswordSignInAsync(loginVM.UserName, loginVM.Password, false, false);
                if (result.Succeeded)
                {
                    return Redirect(loginVM.ReturnUrl ?? "/");
                }
                ModelState.AddModelError("", "Tài khoản và mật khẩu không hợp lệ!");
            }
            return View(loginVM);
        }

		[HttpGet]
		public IActionResult Create()
		{
			return View();
		}
        [HttpPost]
        public async Task<IActionResult> Create(UserModel user, string confirmPass)
        {
            if (ModelState.IsValid)
            {
                if(user.Password == confirmPass)
                {
					//Tạo admin
					/*var roleExists = await _roleManager.RoleExistsAsync("Admin");
					if (!roleExists)
					{
						var adminRole = new IdentityRole("Admin");
						await _roleManager.CreateAsync(adminRole);
					}*/

					AppUserModel newUser = new AppUserModel() { UserName = user.UserName, Email = user.Email };
					IdentityResult result = await _userManager.CreateAsync(newUser, user.Password);
					if (result.Succeeded)
					{
						//await _userManager.AddToRoleAsync(newUser, "Admin");

						TempData["success"] = "Tạo user thành công!";
						return Redirect("/Account/Login");
					}
					foreach (IdentityError error in result.Errors)
					{
						ModelState.AddModelError(string.Empty, error.Description);
					}
				}
				else
				{
					TempData["error"] = "Xác nhận mật khẩu không khớp!";
					return Redirect("/Account/Create");
				}
            }
            return View(user);
        }

        public async Task<IActionResult> Logout(string returnUrl = "/")
        {
            await _signInManager.SignOutAsync();
            return Redirect(returnUrl);
        }
        [HttpPost]
		public async Task<IActionResult> ChangePassword(string name, string newPass, string confirmPass)
		{
			var userNew = await _userManager.FindByNameAsync(name);
            if (userNew != null)
            {
                if (confirmPass != null && confirmPass == newPass) 
                {
					var token = await _userManager.GeneratePasswordResetTokenAsync(userNew);

					var result = await _userManager.ResetPasswordAsync(userNew, token, newPass);

					if (result.Succeeded)
					{
						TempData["success"] = "Đổi mật khẩu thành công!";
						return RedirectToAction("Index", "ManagerAccount");
					}
					else
					{
						TempData["error"] = "Đổi mật khẩu không thành công!";
						return RedirectToAction("AccountSetting", "ManagerAccount");
					}
                }
                else
                {
					TempData["error"] = "Confirm password chưa khớp!";
					return RedirectToAction("AccountSetting", "ManagerAccount");
				}
            }
            else
            {
				TempData["error"] = "Tài khoản không tồn tại";
				return RedirectToAction("AccountSetting", "ManagerAccount");
			}
		}

		public IActionResult ForgotPassword()
		{
			return View();
		}
		public async Task<IActionResult> GetOTP(string name)
		{
			var otp = GenerateOTP();
			ViewBag.OTP = otp;

			try
			{
				var userNew = _userManager.FindByEmailAsync(name).Result;

				if (userNew != null)
				{
					ViewBag.Email = userNew.UserName;
					SendEmail(otp, "Quý khách", userNew.Email, "Mã OTP của quý khách!");
					return View();
				}
				else
				{
					ViewBag.ErrorMessage = "Người dùng không tồn tại.";
					return Redirect("/");
				}
			}
			catch (Exception ex)
			{
				ViewBag.ErrorMessage = $"Lỗi: {ex.Message}";
				return Redirect("/");
			}
		}

		public IActionResult ChangePassByOTP(string email, string otp, string otpUser)
        {
			ViewBag.Name = email;
			if(otp == otpUser)
			{
                return View();
			}
			else
			{
				return Redirect("/");
			}
        }
		public string GenerateOTP()
		{
			Random random = new Random();
			int otp = random.Next(100000, 999999); 
			return otp.ToString("D6"); 
		}
		public void SendEmail(string message, string nameUser, string emailUser, string subject)
		{
			var emailMessage = new MimeMessage();

			emailMessage.From.Add(new MailboxAddress("An Nguyễn", "nta190502@gmail.com"));
			emailMessage.To.Add(new MailboxAddress(nameUser, emailUser));
			emailMessage.Subject = subject;
			emailMessage.Body = new TextPart("plain")
			{
				Text = message
			};

			using (var client = new SmtpClient())
			{
				client.Connect("smtp.gmail.com", 587, false);
				client.Authenticate("nta190502@gmail.com", "siowuqwylcbjdyqt");
				client.Send(emailMessage);
				client.Disconnect(true);
			}
		}
	}
}
