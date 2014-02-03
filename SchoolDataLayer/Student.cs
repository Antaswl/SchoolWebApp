using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataModel;

namespace SchoolDataLayer
{
   public class Student
    {
       public int AddStudent(MStudent _student) 
       {
           using (SqlConnection conn = DBConn.GetConnectionString())
           {
               using (SqlCommand cmd = conn.CreateCommand())
               {
                   string proc = "SADB.AddStudent";
                   cmd.CommandText = proc;
                   cmd.CommandType = CommandType.StoredProcedure;
                   cmd.Parameters.AddWithValue("@roll", _student.Roll);
                   cmd.Parameters.AddWithValue("@firstname", _student.FirstName);
                   cmd.Parameters.AddWithValue("@middlename", _student.MiddleName);
                   cmd.Parameters.AddWithValue("@lastname", _student.LastName);
                   cmd.Parameters.AddWithValue("@address", _student.Address);
                   cmd.Parameters.AddWithValue("@pfirstname", _student.Parent.FirstName);
                   cmd.Parameters.AddWithValue("@pmiddlename", _student.Parent.MiddleName);
                   cmd.Parameters.AddWithValue("@plastname", _student.Parent.LastName);
                   cmd.Parameters.AddWithValue("@PPhone", _student.Parent.Phone);
                   cmd.Parameters.AddWithValue("@dob", DateTime.Now);
                   return cmd.ExecuteNonQuery();
               }
           }
       
       }
      
    }
}
