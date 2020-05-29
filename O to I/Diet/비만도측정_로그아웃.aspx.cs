using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Diet_비만도측정_로그아웃 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            double cm = double.Parse(TextBox7.Text);
            double kg = double.Parse(TextBox8.Text);
            double result = kg / ((cm*0.01) * (cm*0.01));

            Label1.Text = RadioButtonList1.SelectedItem.Text;
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