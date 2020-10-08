using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineCourseRegistration.BLL;
using System.Data.SqlClient;

namespace OnlineCourseRegistration.DAL
{
    public static class CourseRegistrationDB
    {
        //1. The method to register a course for a student
        public static void Register(CourseRegistration cr)
        {
            using (SqlConnection connDB = UtilityDB.ConnectDB())
            {
                SqlCommand sqlInsert = new SqlCommand();

                sqlInsert.CommandText = "INSERT INTO CourseRegistrations (StudentNumber, CourseNumber, RegistrationDate) " +
                                    "VALUES (@studentNumber, @courseNumber, @RegistrationDate)";
                sqlInsert.Parameters.AddWithValue("@studentNumber", cr.StudentNumber);
                sqlInsert.Parameters.AddWithValue("@courseNumber", cr.CourseNumber);
                sqlInsert.Parameters.AddWithValue("@RegistrationDate", cr.RegistrationDate);
                sqlInsert.Connection = connDB;
                sqlInsert.ExecuteNonQuery();
                connDB.Close();
            }
        }

        //2. The method to list all the courses registered by a student
        public static List<CourseRegistration> ListRecordById(int id)
        {
            List<CourseRegistration> courseList = new List<CourseRegistration>();
            SqlConnection ConnDB = UtilityDB.ConnectDB();
            SqlCommand cmdSelect = new SqlCommand();

            cmdSelect.CommandText = "SELECT * FROM CourseRegistrations WHERE StudentNumber = @studentNumber";
            cmdSelect.Parameters.AddWithValue("@studentNumber", id);
            cmdSelect.Connection = ConnDB;

            SqlDataReader sqlReader = cmdSelect.ExecuteReader();
            CourseRegistration cr;

            while (sqlReader.Read())
            {
                cr = new CourseRegistration();

                cr.RegistrationNumber = Convert.ToInt32(sqlReader["RegistrationNumber"]);
                cr.StudentNumber = Convert.ToInt32(sqlReader["StudentNumber"]);
                cr.CourseNumber = sqlReader["CourseNumber"].ToString();
                cr.RegistrationDate = Convert.ToDateTime(sqlReader["RegistrationDate"]);
                courseList.Add(cr);
            }
            ConnDB.Close();
            return courseList;
        }

        public static bool IsRegistered(int id, string courseNum)
        {
            using (SqlConnection connDB = UtilityDB.ConnectDB())
            {
                SqlCommand sqlSelect = new SqlCommand();
                sqlSelect.CommandText = "SELECT * FROM CourseRegistrations " +
                                        "WHERE StudentNumber = @studentNumber " +
                                        "AND CourseNumber = @courseNumber";

                sqlSelect.Parameters.AddWithValue("@studentNumber", id);
                sqlSelect.Parameters.AddWithValue("@courseNumber", courseNum);
                sqlSelect.Connection = connDB;
                SqlDataReader sqlReader = sqlSelect.ExecuteReader();
                if (sqlReader.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public static int NumberOfCoursesRegistered(int id)
        {
            int tempNum;
            SqlConnection connDB = UtilityDB.ConnectDB();
            SqlCommand sqlSelect = new SqlCommand();
            sqlSelect.CommandText = "SELECT COUNT(RegistrationNumber) FROM CourseRegistrations WHERE StudentNumber = @StudentNumber";
            sqlSelect.Parameters.AddWithValue("@StudentNumber", id);
            sqlSelect.Connection = connDB;
            //SqlDataReader sqlReader = sqlSelect.ExecuteReader();
            //tempNum = Convert.ToInt32(sqlReader.Read());
            
            tempNum = Convert.ToInt32(sqlSelect.ExecuteScalar());
            connDB.Close();
            return tempNum;
        }
    }
}