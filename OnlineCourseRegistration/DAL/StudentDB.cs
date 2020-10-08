using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineCourseRegistration.BLL;
using System.Data.SqlClient;

namespace OnlineCourseRegistration.DAL
{
    public static class StudentDB
    {
        public static Student SearchRecord(int id)
        {
            Student aStudent = new Student();
            SqlConnection ConnDB = UtilityDB.ConnectDB();
            SqlCommand cmdSelect = new SqlCommand("SELECT * FROM Students WHERE StudentNumber = @id", ConnDB);
            cmdSelect.Parameters.AddWithValue("@id", id);

            SqlDataReader sqlReader = cmdSelect.ExecuteReader();

            if (sqlReader.Read())
            {
                aStudent.StudentNumber = Convert.ToInt32(sqlReader["StudentNumber"]);
                aStudent.FirstName = sqlReader["FirstName"].ToString();
                aStudent.LastName = sqlReader["LastName"].ToString();
                aStudent.PhoneNumber = sqlReader["PhoneNumber"].ToString();
                aStudent.Email = sqlReader["Email"].ToString();
            }
            else
            {
                aStudent = null;
            }
            ConnDB.Close();
            return aStudent;
        }
    }
}