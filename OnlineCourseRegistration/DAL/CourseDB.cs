using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineCourseRegistration.BLL;
using System.Data.SqlClient;

namespace OnlineCourseRegistration.DAL
{
    public static class CourseDB
    {
        public static List<Course> ListAllRecords()
        {
            List<Course> courseList = new List<Course>();
            SqlConnection ConnDB = UtilityDB.ConnectDB();
            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM Courses", ConnDB);
            SqlDataReader sqlReader = cmdSelect.ExecuteReader();
            Course aCourse;

            while (sqlReader.Read())
            {
                aCourse = new Course();
                aCourse.CourseNumber = sqlReader["CourseNumber"].ToString();
                aCourse.CourseTitle = sqlReader["CourseTitle"].ToString();
                aCourse.Duration = Convert.ToInt32(sqlReader["Duration"]);
                aCourse.Prerequisite = sqlReader["Prerequisite"].ToString();
                courseList.Add(aCourse);
            }
            ConnDB.Close();
            return courseList;
        }

        public static Course GetRecord(string num)
        {
            Course aCourse = new Course();
            SqlConnection ConnDB = UtilityDB.ConnectDB();
            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM Courses WHERE CourseNumber = @number", ConnDB);
            cmdSelect.Parameters.AddWithValue("@number", num);

            SqlDataReader sqlReader = cmdSelect.ExecuteReader();

            if (sqlReader.Read())
            {
                aCourse.CourseNumber = sqlReader["CourseNumber"].ToString();
                aCourse.CourseTitle = sqlReader["CourseTitle"].ToString();
                aCourse.Duration = Convert.ToInt32(sqlReader["Duration"]);
                aCourse.Prerequisite = sqlReader["Prerequisite"].ToString();
            }
            else
            {
                aCourse = null;
            }
            ConnDB.Close();
            return aCourse;
        }
    }
}