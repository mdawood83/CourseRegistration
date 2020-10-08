using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineCourseRegistration.BLL;
using System.Data.SqlClient;

namespace OnlineCourseRegistration.DAL
{
    public static class UserDB
    {
        public static bool VerifyUser(int sId, string pass)
        {
            SqlConnection connDB = UtilityDB.ConnectDB();
            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.Connection = connDB;
            sqlCmd.CommandText = "SELECT * FROM Users WHERE UserId = @username AND Password = @password";
            sqlCmd.Parameters.AddWithValue("@username", sId);
            sqlCmd.Parameters.AddWithValue("@password", pass);
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            if (sqlReader.Read())
            {
                //user.UserId = Convert.ToInt32(sqlReader["UserId"]);
                //user.Password = sqlReader["Password"].ToString();
                connDB.Close();
                return true;
            }
            connDB.Close();
            return false;
        }

        public static void SaveNewPassword(User user)
        {
            SqlConnection connDB = UtilityDB.ConnectDB();
            SqlCommand cmd = new SqlCommand();

            try
            {
                cmd.Connection = connDB;
                cmd.CommandText = "INSERT INTO Users (UserId, Password) " +
                                  "VALUES (@UserId, @Password)";
                cmd.Parameters.AddWithValue("@UserId", user.UserId);
                cmd.Parameters.AddWithValue("@Password", user.Password);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                connDB.Close();
                cmd.Dispose();
            }
        }

        public static bool IsUserDuplicated(int sId)
        {
            SqlConnection connDB = UtilityDB.ConnectDB();
            SqlCommand sqlCmd = new SqlCommand();
            sqlCmd.Connection = connDB;
            sqlCmd.CommandText = "SELECT * FROM Users WHERE UserId = @username";
            sqlCmd.Parameters.AddWithValue("@username", sId);
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            if (sqlReader.Read())
            {
                //user.UserId = Convert.ToInt32(sqlReader["UserId"]);
                connDB.Close();
                return true;
            }
            connDB.Close();
            return false;
        }
    }
}