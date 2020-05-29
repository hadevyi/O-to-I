using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;
public partial class Community_방명록_로그인_목록 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //textbox1에 닉네임 불러오기
            TextBox2.Text = Session["begintime"] + "";
        }
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
                TextBox1.Text = reader["nickname"].ToString();
            }
            conn.Close();
        }
    }

    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("방명록_로그인_목록.aspx");
    }

    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        string fn = Server.MapPath("~/App_Data/방명록.xml");
        XmlDocument doc = new XmlDocument();
        doc.Load(fn);

        XmlNode root = doc.DocumentElement;
        XmlNode guestnode = doc.CreateAttribute("guest");
        root.AppendChild(guestnode);

        XmlAttribute nickname;
        nickname = doc.CreateAttribute("nickname");
        nickname.Value = TextBox1.Text;
        guestnode.Attributes.Append(nickname);

        string sbody = TextBox4.Text;
        sbody = sbody.Replace("\n", "<br>");
        XmlAttribute body;
        body = doc.CreateAttribute("body");
        body.Value = sbody;
        guestnode.Attributes.Append(body);

        doc.Save(fn);
        doc = null;

        ////1.XML 파일 열기
        //string fn = Server.MapPath("~/App_Data/방명록.xml");
        //XmlDocument doc = new XmlDocument();
        //doc.Load(fn);

        ////2. <guest> 노드 생성하고, 루트 노드에 추가
        //XmlNode root = doc.DocumentElement;
        //XmlNode guestnode = doc.CreateElement("guest");
        //root.AppendChild(guestnode);

        //XmlAttribute nickname;
        //nickname = doc.CreateAttribute("nickname");
        //nickname.Value = TextBox1.Text;
        //guestnode.Attributes.Append(nickname);

        //XmlAttribute time;
        //time = doc.CreateAttribute("time");
        //time.Value = TextBox2.Text;
        //guestnode.Attributes.Append(time);

        //XmlAttribute title;
        //title = doc.CreateAttribute("title");
        //title.Value = TextBox3.Text;
        //guestnode.Attributes.Append(title);

        //XmlAttribute data;
        //data = doc.CreateAttribute("data");
        //data.Value = TextBox4.Text;
        //guestnode.Attributes.Append(data);

        //doc.Save(fn);
        //doc = null;

        //Response.Redirect("방명록_로그인_목록.aspx");
    }
}