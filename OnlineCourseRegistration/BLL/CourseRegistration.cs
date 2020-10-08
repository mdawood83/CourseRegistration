using OnlineCourseRegistration.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineCourseRegistration.BLL
{
    public class CourseRegistration
    {
        private int registrationNumber;
        private int studentNumber;
        private string courseNumber;
        private DateTime registrationDate;

        public int RegistrationNumber { get => registrationNumber; set => registrationNumber = value; }
        public int StudentNumber { get => studentNumber; set => studentNumber = value; }
        public string CourseNumber { get => courseNumber; set => courseNumber = value; }
        public DateTime RegistrationDate { get => registrationDate; set => registrationDate = value; }

        public void RegisterCourse(CourseRegistration aCR)
        {
            CourseRegistrationDB.Register(aCR);
        }

        public List<CourseRegistration> ListCoursesRegisteredByStudent(int sId)
        {
            return CourseRegistrationDB.ListRecordById(sId);
        }

        public bool IsCourseRegistered(int sId, string courseNum)
        {
            return CourseRegistrationDB.IsRegistered(sId, courseNum);
        }

        public int NumOfRegisteredCourses(int sId)
        {
            return CourseRegistrationDB.NumberOfCoursesRegistered(sId);
        }
    }
}