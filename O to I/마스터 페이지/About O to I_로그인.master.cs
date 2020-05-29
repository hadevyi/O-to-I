using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 첫화면_로그아웃 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(this.Page.User.Identity.IsAuthenticated)
        {
            Label1.Text = Page.User.Identity.Name;
            string id = Page.User.Identity.Name;
            // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
            string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "SELECT * FROM user_db WHERE id='"+id+"'";

            // SQL COMMAND 수행하기
            conn.Open();
            SqlDataReader reader = Cmd.ExecuteReader();
            // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
            // 리턴 값은 영향을 받은 ROW의 갯수
            if (reader.Read())
            {
                Label1.Text = reader["nickname"].ToString();
                Label9.Text = reader["name"].ToString();
                Label10.Text = reader["cm"].ToString();
                Label11.Text = reader["kg"].ToString();
                Label12.Text = reader["goalkg"].ToString();
                Label14.Text = reader["situ"].ToString();
            }
            conn.Close();
        }
        else
        {
            Response.Redirect("~/첫화면/Default.aspx");
        }
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("~/첫화면/Default.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/내 정보/내 정보.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Diet/식이요법_로그인.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/내 정보/내 정보.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/About O to I/개발동기_로그인.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Community/방명록_로그인_목록.aspx");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Customer_Service/고객센터_로그인.aspx");
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/로그인/로그인.aspx");
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/개발동기_로그인.aspx");

    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/개발진 소개_로그인.aspx");

    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/사이트 소개_로그인.aspx");

    }

    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Community/방명록_로그인_목록.aspx");
    }

    protected void ImageButton6_Click1(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Customer_Service/고객센터_로그인_목록.aspx");
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/첫화면/Default2.aspx");
    }

    protected void ImageButton12_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/첫화면/Default2.aspx");
    }
}
