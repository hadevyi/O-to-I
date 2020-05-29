using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Diet_비만도측정_로그인 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
        if (this.Page.User.Identity.IsAuthenticated)
        {
            Label1.Text = Page.User.Identity.Name;
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
                TextBox7.Text = reader["cm"].ToString();
                TextBox8.Text = reader["kg"].ToString();

            }
            conn.Close();
        }
    }

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            double cm = double.Parse(TextBox7.Text);
            double kg = double.Parse(TextBox8.Text);
            double result = kg / ((cm * 0.01) * (cm * 0.01));

            Label1.Text = RadioButtonList1.SelectedValue;
            Label2.Text = cm + "";
            Label3.Text = kg + "";
            Label4.Text = string.Format("{0:F2}", result);

            if (RadioButtonList1.SelectedValue == "M")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;

                if (result <= 18.2)
                    Label5.Text = "저체중";
                else if (result <= 25.18)
                    Label5.Text = "정상";
                else if (result <= 25)
                    Label5.Text = "과체중";
                else
                    Label5.Text = "비만";
            }
            else if (RadioButtonList1.SelectedValue == "F")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;

                if (result <= 17.96)
                    Label5.Text = "저체중";
                else if (result <= 23.98)
                    Label5.Text = "정상";
                else if (result <= 25)
                    Label5.Text = "과체중";
                else
                    Label5.Text = "비만";
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }

        }
        catch
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
}