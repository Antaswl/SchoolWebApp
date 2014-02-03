using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SchoolDataLayer
{
   public static class DBConn
    {
       public static SqlConnection GetConnectionString()
       {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["schoolConnnection"].ConnectionString);
           if (con.State != ConnectionState.Open)
           {
               con.Open();
           }
           return con;
       }
    }
}
