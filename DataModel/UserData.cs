using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public  class UserData
    {
      public  int id { get; set; }
      public string UserName { get; set; }
      public string Password { get; set; }
      public string Firtname { get; set; }
      public string LastName { get; set; }
      public string Email { get; set; }
      public string UserRoles { get; set; }
      public bool IsActive { get; set; }
      public int RoleId { get; set; }
      public DateTime CreatedOn { get; set; }
           }
}
