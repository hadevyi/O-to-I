using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
public partial class 로그인_로그인 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {

        if (AuthenticateSQL(TextBox3.Text, TextBox4.Text))
            FormsAuthentication.RedirectFromLoginPage(TextBox3.Text, false);
        else
        {
            string script = "<script type='text/javascript'>alert('아이디나 비밀번호가 잘못됬습니다!.');</script>";
            Response.Write(script);
        }
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
}