using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataModel;
using SchoolDataLayer;

namespace SchoolBusiness
{
   public  class UserAccount
   {
       List<UserData> userdata = new List<UserData>();
       UserData users = new UserData();
       DataManager _dm = new DataManager();
       public UserData UserDataValidate(UserData _userdata)
       {
           return _dm.UserValidate(_userdata);
                     
           }
       public List<UserData> GetUserRoles()
       {
           userdata = _dm.GetAllRolesaName();
           return userdata;

       }
    public  int AddUsers(UserData _userdata) {
        return _dm.AddUser(_userdata);
    }
    public List<UserData> ViewUsers()
    {
        userdata = _dm.ViewUsers();
        return userdata;
    }
       
       
    }
}
