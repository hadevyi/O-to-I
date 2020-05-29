using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class 회원가입aspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
      
        }


    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        if (RangeValidator1.IsValid
            && RangeValidator2.IsValid
            && RegularExpressionValidator2.IsValid
            && RegularExpressionValidator3.IsValid
            && RangeValidator3.IsValid
            && RequiredFieldValidator1.IsValid
            && RequiredFieldValidator10.IsValid
            && RequiredFieldValidator2.IsValid
            && RequiredFieldValidator3.IsValid
            && RequiredFieldValidator4.IsValid
            && RequiredFieldValidator5.IsValid
            && RequiredFieldValidator8.IsValid
            && RequiredFieldValidator9.IsValid
            && CompareValidator1.IsValid)
        {
            // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2014??  로 지정 
            string connectionString = "server=(local)\\sqlexpress;Integrated Security=true;database=sqlexpress2";
            SqlConnection conn = new SqlConnection(connectionString);

            // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = conn;
            Cmd.CommandText = "INSERT INTO user_db(name,id,password1,birthday,email,sex,nickname,cm,kg,goalkg) "
            + "VALUES('" + TextBox3.Text + "','" +
                           TextBox4.Text + "','" +
                           TextBox5.Text + "','" +
                           TextBox7.Text + "','" +
                           TextBox11.Text + "','" +
                           RadioButtonList23.SelectedItem.Value + "','" +
                           TextBox10.Text + "'," +
                           TextBox12.Text + "," +
                           TextBox14.Text + "," +
                           TextBox15.Text + ")";
            conn.Open();
            Cmd.ExecuteNonQuery();
            conn.Close();
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
    }
        

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        int[] num = new int[4];
        int max;


        num[int.Parse(RadioButtonList1.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList2.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList3.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList4.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList5.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList6.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList7.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList8.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList9.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList10.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList11.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList12.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList13.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList14.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList15.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList16.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList17.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList18.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList19.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList20.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList21.SelectedItem.Value) - 1]++;
        num[int.Parse(RadioButtonList22.SelectedItem.Value) - 1]++;
        max = num[0];
        if (max < num[1])
        {
            max = num[1];
        }
        if (max < num[2])
        {
            max = num[2];
        }
        if (max < num[3])
        {
            max = num[3];
        }
        string situ = "";
        if (max == num[0])
        {
            situ = "태음인";
        }
        else if (max == num[1])
        {
            situ = "소음인";
        }
        else if (max == num[2])
        {
            situ = "소양인";
        }
        else if (max == num[3])
        {
            situ = "태양인";
        }
        string connectionString = "server=(local)\\sqlexpress;Integrated Security=true;database=sqlexpress2";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;


        Cmd.CommandText = "UPDATE user_db SET situ='" + situ + "' WHERE id ='" + TextBox4.Text + "'";
        conn.Open();
        Cmd.ExecuteNonQuery();
        conn.Close();
       if (RadioButtonList23.SelectedItem.Value == "M")
        {
            Label2.Text = "남자";
        }
        else
            Label2.Text = "여자";
        Label3.Text = TextBox4.Text;
        Label4.Text = TextBox11.Text;
        Label5.Text = TextBox10.Text;
        if (max == num[0])
        {
            Label6.Text = "태음인";
        }
        else if (max == num[1])
        {
            Label6.Text = "소음인";
        }
        else if (max == num[2])
        {
            Label6.Text = "소양인";
        }
        else if (max == num[3])
        {
            Label6.Text = "태양인";
        }

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Label1.Text = TextBox3.Text;

    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/로그인/로그인.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("~첫화면/default.aspx");
    }
}