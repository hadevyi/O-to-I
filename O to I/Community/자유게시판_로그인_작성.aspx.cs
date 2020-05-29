using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Community_자유게시판_로그인_목록 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["begintime"].ToString();
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
                TextBox1.Text = reader["nickname"].ToString();
            }
            conn.Close();
        }
        else
        {
            Response.Redirect("~/첫화면/Default.aspx");
        }
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "INSERT INTO Community (nickname,time,title,text) Values  ('"+TextBox1.Text+"','"+TextBox2.Text+"' ,  '"+TextBox3.Text+"' ,  '"+TextBox4.Text+ "')";
        
        // SQL COMMAND 수행하기
        conn.Open();
        SqlDataReader reader = Cmd.ExecuteReader();
        // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
        // 리턴 값은 영향을 받은 ROW의 갯수
        if (reader.Read())
        {
            TextBox1.Text = reader["nickname"].ToString();
        }
        conn.Close();
        Response.Redirect("자유게시판_로그인_목록.aspx");
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("자유게시판_로그인_목록.aspx");

    }
}