<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/CustomerService_로그인.master" AutoEventWireup="true" CodeFile="고객센터_로그인_관리자.aspx.cs" Inherits="Customer_Service_고객센터_로그인_내용" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style25 {
            text-align: left;
        }
        .auto-style27 {
            color: #BC9A89;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style25">
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/IMAGE/고객센터 관리자 모드 - 내부.png" />
    </p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="167px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [title] FROM [Custom]"></asp:SqlDataSource>
    </asp:Panel>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
    </p>
    <asp:Panel ID="Panel2" runat="server" Height="251px">
        <span class="auto-style27"><strong>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="title" DataSourceID="SqlDataSource2" Height="173px" Width="484px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [title], [Text] FROM [Custom] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        제목&nbsp;&nbsp; :&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        답변<br />
        <asp:TextBox ID="TextBox2" runat="server" Height="115px" OnTextChanged="TextBox2_TextChanged" Width="687px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="답변완료" style="height: 21px" />
        </strong></span>
    </asp:Panel>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
    </p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        &nbsp;</p>
    <p class="auto-style22">
        <br />
    </p>
    <table class="auto-style21">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style23">
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

