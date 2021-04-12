using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menter
{
    public partial class Goal : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //goal submit button
        protected void Goalsubmit_Click(object sender, EventArgs e)
        {
            

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO goals(goal) VALUES (@Goal)",con);

                cmd.Parameters.AddWithValue("@Goal",TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successful');</script>");

            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}