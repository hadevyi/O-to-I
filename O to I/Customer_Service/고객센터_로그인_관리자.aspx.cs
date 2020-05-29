using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Service_고객센터_로그인_내용 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "UPDATE Custom SET ReText='"+TextBox2.Text+"' WHERE title='"+TextBox4.Text+"'";
        // SQL COMMAND 수행하기
        conn.Open();
        Cmd.ExecuteReader();
        conn.Close();

        
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;

    }
}