using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;  

namespace Menter
{
    public partial class Profile : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["role"] = "mentee";
                gvbind();
            }
        }

        private void gvbind()
        {
            /*string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (Session["role"] == "mentor")
                {
                    SqlCommand lct = new SqlCommand("Menter", con);
                    lct.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(lct);
                    con.Open();
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                }

                if (Session["role"] == "mentee")
                {
                    SqlCommand lct = new SqlCommand("Menter", con);
                    lct.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(lct);
                    con.Open();
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                }
            }*/
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }


        }
    }