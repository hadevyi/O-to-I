using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Customer_Service_고객센터_로그인_작성 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Page.User.Identity.Name;

        string id = Page.User.Identity.Name;
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "SELECT * FROM User_db WHERE id='" + id + "'";

        // SQL COMMAND 수행하기
        conn.Open();
        SqlDataReader reader = Cmd.ExecuteReader();
        // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
        // 리턴 값은 영향을 받은 ROW의 갯수
        if (reader.Read())
        {
            TextBox2.Text = reader["password1"].ToString();
        }
        conn.Close();
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        string id = User.Identity.Name;
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "INSERT INTO Custom (id,title,password,Text) VALUES ('"
            +TextBox1.Text+"','"
            +TextBox3.Text+"','"
            +TextBox2.Text+"','"
            +TextBox4.Text+"')";
        
        // SQL COMMAND 수행하기
        conn.Open();
         Cmd.ExecuteReader();
      
        conn.Close();
        Response.Redirect("~/Customer_Service/고객센터_로그인_목록.aspx");
    }
}