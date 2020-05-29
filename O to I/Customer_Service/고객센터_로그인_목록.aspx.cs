using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Customer_Service_고객센터_로그인_목록 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
                if (reader["admin"].ToString() == "1")
                    Response.Redirect("~/Customer_Service/고객센터_로그인_관리자.aspx");
            }
            conn.Close();
        }

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer_Service/고객센터_로그인_작성.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel1.Visible = true;

        string id = Page.User.Identity.Name;
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "SELECT * FROM Custom WHERE id='" + id + "'";

        // SQL COMMAND 수행하기
        conn.Open();
        SqlDataReader reader = Cmd.ExecuteReader();
        // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
        // 리턴 값은 영향을 받은 ROW의 갯수
        if (reader.Read())
        {
            Label16.Text = reader["password"].ToString();
        }
        conn.Close();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == Label16.Text)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }
        
    }
}