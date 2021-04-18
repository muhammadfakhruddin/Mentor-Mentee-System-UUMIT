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
    public partial class Result : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }
        }

        private void gvbind()
        {
            String sql;
            if (Session["role"].Equals("mentor    "))
            {
                sql = "SELECT * FROM result WHERE matricno='" + Session["menter"] + "'";
            }
            else
            {
                sql = "SELECT * FROM result WHERE matricno='" + Session["user"] + "'";
            }
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columcount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columcount;
                GridView1.Rows[0].Cells[0].Text = "No Record Found";
            }
        }
    }
}