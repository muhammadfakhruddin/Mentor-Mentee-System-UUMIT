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
        {}    
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string qry = "select * from Ulogin where UserId='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label4.Text = "Login Sucess......!!";
                    //Response.Write("<script>alert('" + sdr.GetValue(2).ToString()+"');</script>");
                    Session["role"] = sdr.GetValue(2).ToString();
                    Session["user"] = sdr.GetValue(3).ToString();
                    Session["menter"] = sdr.GetValue(4).ToString();
                    //string role = sdr.GetValue(2).ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";

                    
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<script>alert('"+TextBox1.Text+"');</script>");
            }
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                string user = TextBox1.Text;
                string pass = TextBox2.Text;
                SqlCommand cmd = new SqlCommand("select * from user where username = '" +user+ "' AND password='" +pass+ "'", con);
                //SqlCommand cmd = new SqlCommand("select * from user" , con);
                //Response.Write("<script>alert('" + TextBox1.Text.Trim() + "');</script>");
                //Response.Write("<script>alert('" + TextBox2.Text.Trim() + "');</script>");
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Response.Write("<script>alert('Successful');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Failed');</script>");
                }
                con.Close();

                /*if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('"+dr.GetValue(8).ToString()+"');</script>");
                        Session["role"]= "mentee";

                    }
                    Response.Write("<script>alert('Successful');</script>");
                    Response.Redirect("Home.aspx");
                }
                else 
                {
                    //Response.Write("<script>alert('" + TextBox1.Text.Trim() + "');</script>");
                    //Response.Write("<script>alert('" + TextBox2.Text.Trim() + "');</script>");
                }


                
            }
            catch(Exception ex) {
                //Response.Write("<script>alert('Failed');</script>");
            }
        }*/


    }
}