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
    public partial class CourseRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorMsgLbl.Visible = false;
            //Student aStudent = new Student();
            //aStudent = (Student)Session["StudentInfo"];
            int studentNum = Convert.ToInt32(Session["StudentInfo"]);
            StudentLbl.Text = studentNum.ToString();

            Course aCourse = new Course();
            List<Course> courseList = aCourse.GetAllCourses();

            if (!IsPostBack)
            {
                if (courseList != null)
                {
                    foreach (var item in courseList)
                    {
                        DropDownListCourse.Items.Add(item.CourseNumber);
                    }
                }
                else
                {
                    CourseLbl.Text = "Course list is empty!";
                }
            }
        }

        protected void DropDownListCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            Course aCourse = new Course();
            CourseLbl.Visible = true;
            if (DropDownListCourse.SelectedIndex > 0)
            {
                string tempNum = DropDownListCourse.SelectedItem.Value;
                aCourse = aCourse.SearchCourse(tempNum);

                if (aCourse != null)
                {
                    string output = aCourse.CourseTitle + ", " + aCourse.Duration + "-hrs";
                    CourseLbl.Text = output;
                }
            }
            else
            {
                CourseLbl.Text = "";
            }
        }

        protected void ButtonListCourses_Click(object sender, EventArgs e)
        {
            CourseRegistration cr = new CourseRegistration();
            int studentNum = Convert.ToInt32(Session["StudentInfo"]);

            List<CourseRegistration> courseList = cr.ListCoursesRegisteredByStudent(studentNum);
            GridViewList.DataSource = courseList;
            GridViewList.DataBind();
            TextBoxRegisterDate.Text = "";
        }

        protected void ButtonRegisterCourse_Click(object sender, EventArgs e)
        {
            string regDate = TextBoxRegisterDate.Text;

            if (DropDownListCourse.SelectedIndex == 0) // check if course list is not selected
            {
                ErrorMsgLbl.Visible = true;
                ErrorMsgLbl.Text = "Please select the course to register...";
            }
            else if (Validator.IsEmpty(regDate)) // check if register date is empty
            {
                ErrorMsgLbl.Visible = true;
                ErrorMsgLbl.Text = "Please choose the registration date...";
            }
            else
            {
                CourseRegistration cr = new CourseRegistration();
                int studentNum = Convert.ToInt32(Session["StudentInfo"]);
                string courseNum = DropDownListCourse.SelectedItem.Value;

                if (cr.IsCourseRegistered(studentNum, courseNum))
                {
                    ErrorMsgLbl.Visible = true;
                    ErrorMsgLbl.Text = "You've already registered to this course...";
                    return;
                }
                if (cr.NumOfRegisteredCourses(studentNum) < 4) // check the max number of registration
                {
                    cr.StudentNumber = Convert.ToInt32(Session["StudentInfo"]);
                    cr.CourseNumber = DropDownListCourse.SelectedItem.Text;
                    cr.RegistrationDate = Convert.ToDateTime(CalendarRegisterDate.SelectedDate.ToShortDateString());
                    cr.RegisterCourse(cr);

                    List<CourseRegistration> courseList = cr.ListCoursesRegisteredByStudent(studentNum);
                    GridViewList.DataSource = courseList;
                    GridViewList.DataBind();
                    ErrorMsgLbl.Visible = true;
                    ErrorMsgLbl.Text = "You have successfully registered to course: " + CourseLbl.Text + "...";
                }
                else
                {
                    ErrorMsgLbl.Visible = true;
                    ErrorMsgLbl.Text = "Sorry, you have reached out the maximum 4 registered courses...";
                }
            }
        }

        protected void CalendarRegisterDate_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxRegisterDate.Text = CalendarRegisterDate.SelectedDate.ToShortDateString();
        }
    }
}