using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using SchoolDataLayer;

namespace SchoolBusiness
{
   public class User
    {
       DataManager _datam = new DataManager();
        public DataTable userdataValidate(UserData _userData)
        {
            DataTable dTable = new DataTable();
            dTable=_datam.
            return dTable;
        }
      
    }
}
