using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Community_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionstring = "Data Source=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "SELECT * FROM user_db";

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while(reader.Read())
        {
            TableRow r = new TableRow();

            TableCell c1 = new TableCell();
            c1.Controls.Add(new LiteralControl(reader["id"].ToString()));
            r.Cells.Add(c1);

            Table1.Rows.Add(r);
        }
        conn.Close();
    }
}