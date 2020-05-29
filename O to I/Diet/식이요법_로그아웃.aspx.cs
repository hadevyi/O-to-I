using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Diet_식이요법_로그아웃 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }//식이요법 접속시 초기값 (로그아웃) - 섭취 식이요법 / 단백질 다이어트
    }

    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    } //섭취 식이요법 클릭 할때 - 초기값 (단백질 다이어트)

    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
    } //단백질 다이어트 클릭 할때

    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
    } //과일 다이어트 클릭 할때

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
    } //체질별 식이요법 클릭 할때 - 초기화(접근 금지)
}