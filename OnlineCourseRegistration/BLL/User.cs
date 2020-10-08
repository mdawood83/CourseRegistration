using OnlineCourseRegistration.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineCourseRegistration.BLL
{
    public class User
    {
        private int userId;
        private string password;

        public int UserId { get => userId; set => userId = value; }
        public string Password { get => password; set => password = value; }

        public bool VerifyLogin(int sId, string pass)
        {
            return UserDB.VerifyUser(sId, pass);
        }

        public void SavePassword(User user)
        {
            UserDB.SaveNewPassword(user);
        }

        public bool IsUserExist(int sId)
        {
            return UserDB.IsUserDuplicated(sId);
        }
    }
}