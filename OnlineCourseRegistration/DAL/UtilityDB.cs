using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace OnlineCourseRegistration.DAL
{
    public static class UtilityDB
    {
        public static SqlConnection ConnectDB()
        {
            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = ConfigurationManager.ConnectionStrings["SMTIDB_Connection"].ConnectionString;
            conn.Open();
            return conn;
        }
    }
}