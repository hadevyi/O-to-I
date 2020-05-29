using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class 내_정보_내_정보 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegularExpressionValidator1.Enabled = true;
        RegularExpressionValidator2.Enabled = true;
        RegularExpressionValidator3.Enabled = true;
        if (this.Page.User.Identity.IsAuthenticated)
        {

            string id = Page.User.Identity.Name;
            // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
            string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM user_db WHERE id='" + id + "'";

            // SQL COMMAND 수행하기
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();
            // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
            // 리턴 값은 영향을 받은 ROW의 갯수
            if (reader.Read())
            {
                Label16.Text = reader["name"].ToString();
                Label17.Text = reader["id"].ToString();
                Label18.Text = reader["sex"].ToString();
                Label19.Text = reader["nickname"].ToString();
                Label20.Text = reader["email"].ToString();
                Label21.Text = reader["situ"].ToString();
            }
            conn.Close();
        }
        else
        {
            Response.Redirect("/첫화면/Default.aspx");
        }
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if(CompareValidator1.IsValid && this.Page.User.Identity.IsAuthenticated && RegularExpressionValidator3.IsValid) 
        {

            string id = Page.User.Identity.Name;
            string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "UPDATE user_db SET password1 = '"+TextBox7.Text+"' WHERE id= '" + id + "'";

            // SQL COMMAND 수행하기
            conn.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            conn.Close();
            
        }
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {

        if (this.Page.User.Identity.IsAuthenticated && RegularExpressionValidator1.IsValid)
        {

            string id = Page.User.Identity.Name;
            string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "UPDATE user_db SET nickname = '" + TextBox9.Text + "' WHERE id= '" + id + "'";

            // SQL COMMAND 수행하기
            conn.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            conn.Close();
            string script = "<script type='text/javascript'>location.href=location.href;</script>";
            Response.Write(script);
        }
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {

        string id = Page.User.Identity.Name;
        if (this.Page.User.Identity.IsAuthenticated && RegularExpressionValidator2.IsValid)
        {

            string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "UPDATE user_db SET email = '" + TextBox10.Text + "' WHERE id= '" + id + "'";

            // SQL COMMAND 수행하기
            conn.Open();
            int rowsAffected = Cmd.ExecuteNonQuery();
            conn.Close();
            string script = "<script type='text/javascript'>location.href=location.href;</script>";
            Response.Write(script);
        }
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {

    }
}
