using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
   public  class MStudent
    {
      public int Studentid { get; set; }
      public int Roll { get; set; }
      public int Grade { get; set; }
      public string section { get; set; }
      public string FirstName { get; set; }
      public string LastName { get; set; }
      public string MiddleName { get; set; }
      public DateTime DOB{get; set;}
      public string Address { get; set; }
      public int parentid { get; set; }
      public virtual StudentParent Parent { get; set; }
      
    }
}
