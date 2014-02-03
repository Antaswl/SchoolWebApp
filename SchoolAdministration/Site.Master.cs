using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolAdministration
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    TxtLogonUser.Text = Session["username"].ToString();
                }
            }
        }


        protected void Logout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}