using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataModel;
using SchoolBusiness;

namespace SchoolAdministration
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        UserAccount _ua = new UserAccount();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadUserList();
            }

        }
        public void loadUserList()
        {
            List<UserData> users = new List<UserData>();
            users = _ua.ViewUsers();
            ViewUser.DataSource = users;
            ViewUser.DataBind();
           
        }
   }
}