using OnlineCourseRegistration.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineCourseRegistration.BLL
{
    public class Student
    {
        private int studentNumber;
        private string firstName;
        private string lastName;
        private string phoneNumber;
        private string email;

        public int StudentNumber { get => studentNumber; set => studentNumber = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string PhoneNumber { get => phoneNumber; set => phoneNumber = value; }
        public string Email { get => email; set => email = value; }

        public Student SearchStudent(int sId)
        {
            return StudentDB.SearchRecord(sId);
        }
    }
}