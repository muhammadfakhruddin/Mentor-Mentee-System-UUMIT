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
            Session["role"]="mentor";
            try
            {
                if (Session["role"].Equals("mentor"))
                {
                    Course.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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
    }
}