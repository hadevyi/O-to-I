using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Community_자유게시판_로그인_목록 : System.Web.UI.Page
{

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeleteEventArgs e)
    {
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;

        Cmd.CommandText = "DELETE * FROM Community WHERE ";// WHERE title='" + id + "'";
                                                           // SQL COMMAND 수행하기
        conn.Open();
        //    SqlDataReader reader = Cmd.ExecuteReader();
    }
}