using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class 첫화면_로그아웃 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(ImageButton7, null) + ";return false;}");
        TextBox2.Attributes.Add("onkeypress", "if(event.keyCode==13){" + this.Page.ClientScript.GetPostBackEventReference(ImageButton7, null) + ";return false;}");

        if (!IsPostBack)
        {
            TextBox1.Focus();
        }
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/회원가입/회원가입aspx.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/회원가입/회원가입aspx.aspx");

    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        if (AuthenticateSQL(TextBox1.Text, TextBox2.Text))
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
        else
        {
            string script = "<script type='text/javascript'>alert('아이디나 비밀번호가 잘못됬습니다!.');</script>";
            Response.Write(script);
        }
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    private bool AuthenticateSQL(string user, string password)
    {
        bool IsAuthenticated = false;
        string source = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(source);
        conn.Open();
        string sql = "SELECT * FROM user_db WHERE id = '" + user + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            bool tempBool = (password == reader["password1"].ToString());
            if (tempBool)
            {
                IsAuthenticated = true;
            }
        }
        reader.Close();
        conn.Close();
        return IsAuthenticated;
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/로그인/로그인.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Diet/식이요법_로그아웃.aspx");

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/About O to I/개발동기_로그아웃.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Community/방명록_로그아웃.aspx");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Customer_Service/고객센터_로그아웃.aspx");
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/개발동기_로그아웃.aspx");

    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/개발진 소개_로그아웃.aspx");

    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/About O to I/사이트 소개_로그아웃.aspx");

    }

    protected void ImageButton5_Click1(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Community/방명록_로그아웃.aspx");
    }

    protected void ImageButton6_Click1(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("~/Customer_Service/고객센터_로그아웃.aspx");
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/첫화면/Default.aspx");
    }

    protected void ImageButton12_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/첫화면/Default.aspx");
    }
}
