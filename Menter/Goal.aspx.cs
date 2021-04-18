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
    public partial class Goal : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MenterConnectionString"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["role"].Equals("mentor    "))
            {
                Label.Visible = false;
                TextBox1.Visible = false;
                Goalsubmit.Visible = false;
                gvbind();
            }
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
                sql = "SELECT * FROM goals WHERE matricno='" + Session["menter"] + "'";
            }
            else 
            {
                sql = "SELECT * FROM goals WHERE matricno='" + Session["user"] + "'";
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
            }else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource=ds;
                GridView1.DataBind();
                int columcount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columcount;
                GridView1.Rows[0].Cells[0].Text = "No Record Found";

            }

        }

        //goal submit button
        protected void Goalsubmit_Click(object sender, EventArgs e)
        {
            

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO goals(goal,matricno) VALUES (@submit,"+Session["user"]+")",con);
                cmd.Parameters.AddWithValue("@submit",TextBox1.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successful');</script>");

            }
            catch (Exception ex) 
            {
                Response.Write("<script>alert('Failed');</script>");
            }
        }
        //Delete button
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblid");
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM goals where goal = '" + Convert.ToString(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'AND matricno ='" + Session["user"] + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            e.RowIndex.ToString();
            gvbind();
        }



    }
}