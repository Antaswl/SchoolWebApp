using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataModel;
using Helper;
using SchoolBusiness;

namespace SchoolAdministration
{
    public partial class Login : System.Web.UI.Page
    {

      private readonly UserAccount _useraccount = new UserAccount();
      private readonly UserData _userdata = new UserData();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["Preferences"];
                if (cookie != null)
                {
                    Username.Text = cookie["username"];
                }
            }

        }

        protected void BtnLogin_Click1(object sender, EventArgs e)
        {
            PasswordTrans hpwd = new PasswordTrans();
            _userdata.UserName = Username.Text;
            _userdata.Password = hpwd.encrypt(Password.Text);
            HttpCookie cookie = new HttpCookie("Preferences");
            cookie["username"] = Username.Text;
            cookie["password"] = Password.Text;
            if (cbdemo2.Checked == true)
            {
                cookie.Expires = DateTime.Now.AddDays(5);
                Response.Cookies.Add(cookie);
            }
            else
            {
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);
            }
            UserData ud = _useraccount.UserDataValidate(_userdata);
            if (ud!=null)
            {
               // UserData userdata = new UserData();
                string firstName = ud.Firtname;
                Session.Add("username", firstName);
                FormsAuthentication.RedirectFromLoginPage(firstName, true);
                Response.Redirect("Home.aspx");
            }
            else
            {
               // Label4.Text = "Login Failed!!";
            }
        }

        private string Encryptdata(string password)
        {
            string strmsg = string.Empty;
            byte[] encode = new
            byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            strmsg = Convert.ToBase64String(encode);
            return strmsg;
        }
        private string Decryptdata(string encryptpwd)
        {
            string decryptpwd = string.Empty;

            UTF8Encoding encodepwd = new UTF8Encoding();
            System.Text.Decoder utf8Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            return decryptpwd;

        }

      
    }
}