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
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxUsername.Focus();
            UserErrorLbl.Visible = false;
            PassErrorLbl.Visible = false;
            LoginErrorLbl.Visible = false;
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            User user = new User();
            string studId = (TextBoxUsername.Text).Trim();
            string pass = (TextBoxPassword.Text).Trim();
            string confPass = (TextBoxConfirmPass.Text).Trim();

            if (Validator.IsEmpty(studId)) // check if username is empty
            {
                UserErrorLbl.Visible = true;
                UserErrorLbl.Text = "Please enter your student number...";
                TextBoxUsername.Focus();
            }
            else if (Validator.IsEmpty(pass)) // check if passwrod is empty
            {
                PassErrorLbl.Visible = true;
                PassErrorLbl.Text = "Please enter your password...";
                TextBoxPassword.Focus();
            }
            else if (Validator.IsEmpty(confPass)) // check if confirm passwrod is empty
            {
                ConfPassErrorLbl.Visible = true;
                ConfPassErrorLbl.Text = "Please enter your confirm password...";
                TextBoxConfirmPass.Focus();
            }
            else if (!(Validator.IsValidId(studId, 5))) // check if student Number is not 5-digits
            {
                UserErrorLbl.Visible = true;
                UserErrorLbl.Text = "Username must be 5-digit number...";
                TextBoxUsername.Text = "";
                TextBoxUsername.Focus();
                return;
            }
            else
            {
                Student aStudent = new Student();
                int studentNum = Convert.ToInt32(TextBoxUsername.Text);

                aStudent.SearchStudent(studentNum);
                
                if (pass == confPass)
                {
                    User aUser = new User();
                    if (user.IsUserExist(studentNum))
                    {
                        LoginErrorLbl.Visible = true;
                        LoginErrorLbl.Text = "User: "+ TextBoxUsername.Text + " is already exist, please sign-in...";
                    }
                    else
                    {
                        aUser.UserId = studentNum;
                        aUser.Password = pass;
                        aUser.SavePassword(aUser);
                        LoginErrorLbl.Visible = true;
                        //LoginErrorLbl.Text = "Congratulation! Account has been created successfully...";
                        Response.Redirect("LoginForm.aspx");
                    }
                }
                else
                {
                    LoginErrorLbl.Visible = true;
                    LoginErrorLbl.Text = "Password does not match...";
                }
            }
        }
    }
}