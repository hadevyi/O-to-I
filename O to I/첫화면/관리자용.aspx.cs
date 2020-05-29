using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class 첫화면_관리자용 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
    }

    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        int cnt = 0;   
        Panel1.Visible = true;
       
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\SQLExpress;Integrated Security=true;database=sqlexpress2";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "select * from user_db";//얘뺴곤 항상 다 똑같음

        // SQL COMMAND 수행하기
        conn.Open();
        // ExecuteNonQuery()문은 CREATE, ALTER, DROP, INSERT, UPDATE, DELETE 문을 수행할때 사용
        // 리턴 값은 영향을 받은 ROW의 갯수
        SqlDataReader reader = Cmd.ExecuteReader();
        while (reader.Read())
        {
            if (cnt == 0)
            {
                TableRow r = new TableRow();

                // 필드(  name ) 값 추출하여 테이블 cell에 넣기
                TableCell c1 = new TableCell();
                c1.Controls.Add(new LiteralControl("name"));
                r.Cells.Add(c1);
                // 필드(  id ) 값 추출하여 테이블 cell에 넣기
                TableCell c2 = new TableCell();
                c2.Controls.Add(new LiteralControl("id"));
                r.Cells.Add(c2);
                // 필드(  email ) 값 추출하여 테이블 cell에 넣기
                TableCell c3 = new TableCell();
                c3.Controls.Add(new LiteralControl("email"));
                r.Cells.Add(c3);
                // 필드(  sex  ) 값 추출하여 테이블 cell에 넣기
                TableCell c4 = new TableCell();
                c4.Controls.Add(new LiteralControl("sex"));
                r.Cells.Add(c4);
                // 필드(  level  ) 값 추출하여 테이블 cell에 넣기
                TableCell c5 = new TableCell();
                c5.Controls.Add(new LiteralControl("situ"));
                r.Cells.Add(c5);
                // 필드(  mileage  ) 값 추출하여 테이블 cell에 넣기
                TableCell c6 = new TableCell();
                c6.Controls.Add(new LiteralControl("cm"));
                r.Cells.Add(c6);
                TableCell c7 = new TableCell();
                c7.Controls.Add(new LiteralControl("kg"));
                r.Cells.Add(c7);
                TableCell c8 = new TableCell();
                c8.Controls.Add(new LiteralControl("goalkg"));
                r.Cells.Add(c8);

                Table1.Rows.Add(r);
            }
            if(cnt>=0)
            {
                TableRow r = new TableRow();

                // 필드(  name ) 값 추출하여 테이블 cell에 넣기
                TableCell c1 = new TableCell();
                c1.Controls.Add(new LiteralControl(reader["name"].ToString()));
                r.Cells.Add(c1);
                // 필드(  id ) 값 추출하여 테이블 cell에 넣기
                TableCell c2 = new TableCell();
                c2.Controls.Add(new LiteralControl(reader["id"].ToString()));
                r.Cells.Add(c2);
                // 필드(  email ) 값 추출하여 테이블 cell에 넣기
                TableCell c3 = new TableCell();
                c3.Controls.Add(new LiteralControl(reader["email"].ToString()));
                r.Cells.Add(c3);
                // 필드(  sex  ) 값 추출하여 테이블 cell에 넣기
                TableCell c4 = new TableCell();
                c4.Controls.Add(new LiteralControl(reader["sex"].ToString()));
                r.Cells.Add(c4);
                // 필드(  level  ) 값 추출하여 테이블 cell에 넣기
                TableCell c5 = new TableCell();
                c5.Controls.Add(new LiteralControl(reader["situ"].ToString()));
                r.Cells.Add(c5);
                // 필드(  mileage  ) 값 추출하여 테이블 cell에 넣기
                TableCell c6 = new TableCell();
                c6.Controls.Add(new LiteralControl(reader["cm"].ToString()));
                r.Cells.Add(c6);
                TableCell c7 = new TableCell();
                c7.Controls.Add(new LiteralControl(reader["kg"].ToString()));
                r.Cells.Add(c7);
                TableCell c8 = new TableCell();
                c8.Controls.Add(new LiteralControl(reader["goalkg"].ToString()));
                r.Cells.Add(c8);

                Table1.Rows.Add(r);

            }
            cnt++;
        }
        conn.Close();
    }


    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        string id = TextBox1.Text;
        // 자신 PC의 SQLEXPRESS를 DB서버로 지정하고 사용 데이터베이스는 VS2015???  로 지정 
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "DELETE FROM user_db WHERE id='" + id + "'";
        Label16.Text = "유저가 탈퇴되었습니다.";
        // SQL COMMAND 수행하기
        conn.Open();
        Cmd.ExecuteReader();

        conn.Close();
    }

    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        
    }
}