using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Diet_회원용Diet_로그인 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;

            Label18.Text = "";
        }
        string id = Page.User.Identity.Name;
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
            Label16.Text = reader["name"].ToString();

        }
        conn.Close();
    }

    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Label18.Text = "";

        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int kcal = int.Parse(TextBox3.Text);
            Label18.Text = "";

            if (TextBox3.Text == "")
            {
                Label18.Text = "음식을 선택 후 눌러주세요. ";
            }
            else if (kcal <= 200)
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else if (kcal <= 500)
            {
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
            }
            else if (kcal <= 800)
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
            }
            else
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
            }
        }
        catch
        {
            Label18.Text = "음식을 선택 후 눌러주세요. ";
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList1.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList1.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList1SelectedItemText = DropDownList1.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList1SelectedItemText, DropDownList1.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList1.SelectedItem.Value, DropDownList1.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
                                    // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList1.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText,DropDownList1.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue)* (NewAmount-1)).ToString(), DropDownList1.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList1.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수
        
        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList1.SelectedIndex = -1;
    }

    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList8.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList8.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList8SelectedItemText = DropDownList8.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList8SelectedItemText, DropDownList8.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList8.SelectedItem.Value, DropDownList8.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList8.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList8.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList8.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList8.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList8.SelectedIndex = -1;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList2.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList2.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList2SelectedItemText = DropDownList2.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList2SelectedItemText, DropDownList2.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList2.SelectedItem.Value, DropDownList2.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList2.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList2.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList2.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList2.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList2.SelectedIndex = -1;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList3.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList3.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList3SelectedItemText = DropDownList3.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList3SelectedItemText, DropDownList3.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList3.SelectedItem.Value, DropDownList3.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList3.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList3.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList3.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList3.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList3.SelectedIndex = -1;
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList4.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList4.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList4SelectedItemText = DropDownList4.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList4SelectedItemText, DropDownList4.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList4.SelectedItem.Value, DropDownList4.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList4.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList4.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList4.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList4.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList4.SelectedIndex = -1;
    }

    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList9.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList9.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList9SelectedItemText = DropDownList9.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList9SelectedItemText, DropDownList9.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList9.SelectedItem.Value, DropDownList9.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList9.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList9.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList9.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList9.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList9.SelectedIndex = -1;
    }

    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label18.Text = "";

        bool SameItemExist = false;
        string itemValue = "";
        int itemindex = 0;
        string itemText = "";
        string value = DropDownList10.SelectedItem.Value;

        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Text.Contains(DropDownList10.SelectedItem.Text))
            {
                SameItemExist = true;
                itemValue = item.Value; //int.Parse(item.Value);
                itemText = item.Text;
                itemindex = ListBox1.Items.IndexOf(new ListItem(item.Text, item.Value));
            }
        }

        if (!SameItemExist)
        {
            string DropDownList10SelectedItemText = DropDownList10.SelectedItem.Text + "[" + 1 + "]";
            ListBox1.Items.Add(new ListItem(DropDownList10SelectedItemText, DropDownList10.SelectedItem.Value));
            ListBox2.Items.Add(new ListItem(DropDownList10.SelectedItem.Value, DropDownList10.SelectedItem.Text));
        }
        else // 리스트 박스에 중복 되는게 있을 때
        {
            int NewAmount = int.Parse(itemText.Substring(itemText.IndexOf("[") + 1,
                                      (itemText.LastIndexOf("]") - itemText.IndexOf("[")) - 1))
                                       + 1;
            // + int.Parse(TextBox2.Text);
            string NewItemText = DropDownList10.SelectedItem.Text + "[" + NewAmount.ToString() + "]";
            ListBox1.Items.Remove(new ListItem(itemText, itemValue));
            ListBox1.Items.Insert(itemindex, new ListItem(NewItemText, DropDownList10.SelectedItem.Value));

            ListBox2.Items.Remove(new ListItem((int.Parse(itemValue) * (NewAmount - 1)).ToString(), DropDownList10.SelectedItem.Text));
            ListBox2.Items.Insert(itemindex, new ListItem((int.Parse(itemValue) * NewAmount).ToString(), DropDownList10.SelectedItem.Text));
        }

        int ToTalKcal = 0;    // 총 가격을 위한 변수

        // ListBox2 모든항목의 Text 값 문자열 중에서 숫자만을 추출하여 합계 계산 
        foreach (ListItem item in ListBox2.Items)
        {
            ToTalKcal += int.Parse(item.Text);
        }
        TextBox3.Text = ToTalKcal.ToString();
        DropDownList10.SelectedIndex = -1;
    }

    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        Label18.Text = "";

        ListBox1.Items.Clear();
        ListBox2.Items.Clear();
        TextBox3.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
    }

    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Label18.Text = "";
        Panel1.Visible = false;
    }

    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        string connectionString = "server=(local)\\sqlexpress;Initial Catalog=sqlexpress2;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        // SQL COMMAND OBJECT를 만들고  SQL COMMAND 넣기
        SqlCommand Cmd = new SqlCommand();
        Cmd.Connection = conn;
        Cmd.CommandText = "INSERT INTO Food_db (id,kcal,menu) VALUES ('" + TextBox1.Text + "'," + TextBox2.Text+",'"+DropDownList7.SelectedItem.Value + "')";

        // SQL COMMAND 수행하기
        conn.Open();
        Cmd.ExecuteReader();
        conn.Close();
    }
}