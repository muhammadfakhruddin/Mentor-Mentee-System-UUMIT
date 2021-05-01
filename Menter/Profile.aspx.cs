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
                gvbind();
            }
        }

        private void gvbind()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;
            String sql;
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (Session["role"].Equals("mentor"))
                {
                    sql = "select * from mentor where staffno='" + Session["user"] + "'";
                    SqlCommand lct = new SqlCommand(sql, con);
                    SqlDataAdapter sda = new SqlDataAdapter(lct);
                    con.Open();
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    FormView3.DataSource = dt;
                    FormView3.DataBind();
                }else
                {
                    sql = "select * from mentee where matricno='" + Session["user"] + "'";
                    SqlCommand lct = new SqlCommand(sql, con);
                    SqlDataAdapter sda = new SqlDataAdapter(lct);
                    con.Open();
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    FormView2.DataSource = dt;
                    FormView2.DataBind();

                }
            }
        }
        }
    }