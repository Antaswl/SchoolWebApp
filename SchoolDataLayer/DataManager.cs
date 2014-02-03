using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataModel;
using Helper;

namespace SchoolDataLayer
{
   public class DataManager 
    {
       //private DBConn db = new DBConn();
       public UserData UserValidate(UserData _user)
        {
            UserData userdata = new UserData();
           // DataTable dt = new DataTable();
            string proc = "SADB.UserValidate";
            SqlCommand cmd = new SqlCommand(proc,DBConn.GetConnectionString());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", _user.UserName);
            cmd.Parameters.AddWithValue("@password", _user.Password);
            using (SqlDataReader reader = cmd.ExecuteReader()) {
                if (reader != null)
              {
                    while (reader.Read())
                    {
                        userdata.UserName = (string)reader["UserName"];
                        userdata.Firtname = (string)reader["FirstName"];
                        userdata.LastName = (string)reader["LastName"];
                    }
                }
                reader.Dispose();
            }
            cmd.Dispose();
            return userdata;
        }

        public List<UserData> ViewUsers() {
            List<UserData> userdata = new List<UserData>();
            string proc = "SADB.ProcGetAllUser";
            SqlCommand cmd = new SqlCommand(proc, DBConn.GetConnectionString());
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
           if(reader!=null)
           {
              while (reader.Read())
                {
                    userdata.Add(
                        new UserData
                        {
                            id = (int)reader["Id"],
                            Firtname = (string)reader["FirstName"],
                            UserName = (string)reader["UserName"],
                            LastName = (string)reader["LastName"],
                            Email = (string)reader["Email"],
                            UserRoles = (string)reader["RoleName"],
                           //  reader.GetDateTime(reader.GetOrdinal("Date"))
                            CreatedOn = reader.GetDateTime(reader.GetOrdinal("CreatedOn")),
                            IsActive = reader.GetBoolean(reader.GetOrdinal("IsActive"))
                        }
                        );
                }
              reader.Dispose();
            }
            cmd.Dispose();
             return userdata;
        }

        public List<UserData> GetAllRolesaName()
        {
            List<UserData> rolesname = new List<UserData>();
            string proc = "SADB.procGetAllUserRoles";
            SqlCommand cmd = new SqlCommand(proc, DBConn.GetConnectionString());
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            try
            {

                while (reader.Read())
                {
                    rolesname.Add(
                        new UserData
                        {
                            RoleId = (int)reader["RoleId"],
                            UserRoles = (string)reader["RoleName"]
                                         }
                      );
                }
            }

            catch (Exception ex)
            {

            }
            cmd.Dispose();
            reader.Dispose();
            return rolesname;


        }

        public int AddUser(UserData _user)
        {
            using (SqlConnection conn = DBConn.GetConnectionString())
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    string proc = "SADB.AddUser";
                    cmd.CommandText = proc;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@firstname", _user.Firtname);
                    cmd.Parameters.AddWithValue("@lastname", _user.LastName);
                    cmd.Parameters.AddWithValue("@username", _user.UserName);
                    cmd.Parameters.AddWithValue("@password", _user.Password);
                    cmd.Parameters.AddWithValue("@email", _user.Email);
                    cmd.Parameters.AddWithValue("@isactive", _user.IsActive);
                    cmd.Parameters.AddWithValue("@roleid", _user.RoleId);
                    cmd.Parameters.AddWithValue("@creteon", DateTime.Now);
                     return cmd.ExecuteNonQuery();
                }
            }
        }

    }
}
