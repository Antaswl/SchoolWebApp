using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataModel;
using Helper;
using SchoolBusiness;

namespace SchoolAdministration
{
    public partial class CreateUser : System.Web.UI.Page
    {
       // UserAccount ua = new UserAccount();
        private UserAccount ua = new UserAccount();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<UserData> roles=new List<UserData>();
                roles=ua.GetUserRoles();
                DropRoleType.DataSource = roles;
                DropRoleType.DataTextField = "UserRoles";
                DropRoleType.DataValueField = "RoleId";
                DropRoleType.DataBind();
            
            }
         
        }


      
        protected void Button1_Click(object sender, EventArgs e)
        {
            PasswordTrans epsw = new PasswordTrans();
            UserData _ud = new UserData(){
            UserName =TxtUsername.Text, 
            Firtname =TxtFName.Text,
            LastName = TxtlName.Text,
            Email= TxtEMail.Text ,
            Password=epsw.encrypt(PwdPassword.Text),
            IsActive=CkBoxActive.Checked,
            RoleId= Convert.ToInt32(DropRoleType.SelectedValue)
            };
            int result = ua.AddUsers(_ud);
            if (result >= 1)
            {
                SqlConnection conn = new SqlConnection();

                Label1.Text = "Successfully inserted the new department";
                
            }
            else
            {
                Label1.Text = "sorry!Error occured while inserting!!";
            }
        }

    }
}