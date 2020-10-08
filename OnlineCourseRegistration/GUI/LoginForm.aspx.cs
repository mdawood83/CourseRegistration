using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineCourseRegistration.BLL;
using OnlineCourseRegistration.VALIDATION;

namespace OnlineCourseRegistration.GUI
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxUsername.Focus();
            UserErrorLbl.Visible = false;
            PassErrorLbl.Visible = false;
            LoginErrorLbl.Visible = false;
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            User user = new User();
            string studId = (TextBoxUsername.Text).Trim();
            string pass = (TextBoxPassword.Text).Trim();
            if (Validator.IsEmpty(studId)) // check if username is empty
            {
                UserErrorLbl.Visible = true;
                UserErrorLbl.Text = "Please enter your username...";
                TextBoxUsername.Focus();
            }
            else if (Validator.IsEmpty(pass)) // check if password is empty
            {
                PassErrorLbl.Visible = true;
                PassErrorLbl.Text = "Please enter your password...";
                TextBoxPassword.Focus();
            }
            else if (!(Validator.IsValidId(studId, 5))) // check if username is not 5-digits
            {
                UserErrorLbl.Visible = true;
                UserErrorLbl.Text = "Username must be 5-digit number...";
                TextBoxUsername.Text = "";
                TextBoxUsername.Focus();
                return;
            }
            else
            {
                if (user.VerifyLogin(Convert.ToInt32(studId), pass))
                {
                    Session["StudentInfo"] = Convert.ToInt32(TextBoxUsername.Text);
                    Response.Redirect("CourseRegistrationForm.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    LoginErrorLbl.Visible = true;
                    LoginErrorLbl.Text = "Invalid username or password...";
                    TextBoxPassword.Text = "";
                    TextBoxUsername.Focus();
                }
            }
        }
    }
}