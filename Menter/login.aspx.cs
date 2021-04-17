using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menter
{
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from user where username = '" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["role"]= "mentee";

                    }
                    Response.Write("<script>alert('Successful');</script>");
                    Response.Redirect("Home.aspx");
                }
                else 
                {
                    Response.Write("<script>alert('" + TextBox1.Text.Trim() + "');</script>");
                    Response.Write("<script>alert('" + TextBox2.Text.Trim() + "');</script>");
                }


                
            }
            catch(Exception ex) {
                Response.Write("<script>alert('Failed');</script>");
            }
        }


    }
}