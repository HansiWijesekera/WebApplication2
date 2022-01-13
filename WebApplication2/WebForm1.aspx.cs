

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into data values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data has been inserted";
            GridView2.DataBind();
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update data set phone='" + TextBox2.Text + "', address ='" + TextBox3.Text + "' , email ='" + TextBox3.Text + "' where name='" + TextBox1.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data has been Updated";
            GridView2.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string find = "select * from data where (name like '%' +@name+ '%')";
            SqlCommand cmd = new SqlCommand(find, con);
            cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox5.Text;
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "name");

            GridView2.DataSourceID = null;
            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
            Label1.Text = "data has been selected";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from data where name='" + (TextBox1.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data has been Deleted";
            GridView2.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}