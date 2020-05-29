using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 첫화면_Default2 : System.Web.UI.Page
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
                    Response.Redirect("~/첫화면/관리자용.aspx");
            }
            conn.Close();
        }
        else
        {
            Response.Redirect("~/첫화면/Default.aspx");
        }

        if (!IsPostBack)
        {
           Label16.Text = Application["currentUser"] + "명";
           Label17.Text = Session["begintime"] + "";
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

       
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        string id = Page.User.Identity.Name;
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "UPDATE user_db SET cm ='" + TextBox1.Text + "' WHERE id ='" + id + "'";

        // SQL COMMAND 수행하기
        conn.Open();
        Cmd.ExecuteReader();

        conn.Close();
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        string id = Page.User.Identity.Name;
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "UPDATE user_db SET kg ='" + TextBox2.Text + "' WHERE id ='" + id + "'";

        // SQL COMMAND 수행하기
        conn.Open();
        Cmd.ExecuteReader();

        conn.Close();
    }
}