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
    public partial class AddStudents : System.Web.UI.Page
    {
       private readonly Student st=new Student();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MStudent student = new MStudent()
            {
                FirstName = TxtStudentFName.Text,
                LastName = TxtStudentLName.Text,
                MiddleName = TxtMiddleName.Text,
                Roll = Convert.ToInt32(TxtRoll.Text),
                Address = StudentAddress.Text,
                DOB = Convert.ToDateTime(DOB.Text),
                Grade = Convert.ToInt32(Grade.Text),
                section = TxtSection.Text,
                Parent = new StudentParent() {
                    FirstName = ParentFName.Text,
                    MiddleName =ParentMName.Text,
                    LastName = ParentLName.Text,
                    Address=ParentAddress.Text,
                    Phone = Convert.ToInt32(ParentPhone.Text)
                    },
            };
            int result = st.addstudent(student);

        }
    }
}