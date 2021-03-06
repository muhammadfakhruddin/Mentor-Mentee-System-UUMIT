using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Menter
{
    public partial class Course : System.Web.UI.Page
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
            sql = "SELECT * FROM course WHERE matricno='" + Session["menter"] + "'";
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

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO comments(comment,matricno) VALUES (@Comment," + Session["menter"] + ")", con);
                cmd.Parameters.AddWithValue("@Comment", Comment.Text.Trim());
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