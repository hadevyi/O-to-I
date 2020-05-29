using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Community_Detailsview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("자유게시판_로그인_목록.aspx");
    }
}