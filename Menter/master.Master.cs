using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menter
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].Equals("mentor"))
            {
                Course.Visible = true;
                CourseRegistration.Visible = false;
                CourseConfirmation.Visible = false;
            }
            else {
                Course.Visible = false;
                CourseRegistration.Visible = true;
                CourseConfirmation.Visible = true;
            }
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void Goals_Click(object sender, EventArgs e)
        {
            Response.Redirect("Goal.aspx");
        }

        protected void Result_Click(object sender, EventArgs e)
        {
            Response.Redirect("Result.aspx");
        }

        protected void Course_Click(object sender, EventArgs e)
        {
            Response.Redirect("Course.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void CourseRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseRegistration.aspx");
        }

        protected void CourseConfirmation_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseConfirmation.aspx");
        }

    }
}