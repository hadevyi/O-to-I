<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/CustomerService_로그인.master" AutoEventWireup="true" CodeFile="고객센터_로그인_목록.aspx.cs" Inherits="Customer_Service_고객센터_로그인_목록" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style21">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <asp:Panel ID="Panel3" runat="server" Height="220px">
        <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/글쓰기 - 버튼.png" OnClick="ImageButton9_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="152px" Width="513px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [title] FROM [Custom]"></asp:SqlDataSource>
        <br />
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="169px">
        <br />
        회원님의&nbsp; 비밀번호를 입력해주세요 :&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 21px" Text="확 인" />
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel2" runat="server" Height="304px">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="730px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" EnableTheming="True">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                <asp:BoundField DataField="ReText" HeaderText="ReText" SortExpression="ReText" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [title], [Text], [ReText] FROM [Custom]"></asp:SqlDataSource>
    </asp:Panel>
    <br />
    <br />
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <asp:Panel ID="Panel4" runat="server" Height="120px">
        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
    </asp:Panel>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

