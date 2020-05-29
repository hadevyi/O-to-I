<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Community_로그인.master" AutoEventWireup="true" CodeFile="자유게시판_로그인_목록.aspx.cs" Inherits="Community_자유게시판_로그인_목록" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            text-align: right;
        }
        .auto-style25 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/자유게시판 - 메뉴아이콘.png" />
    </p>
    <p class="auto-style24">
        <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/글쓰기 - 버튼.png" OnClick="ImageButton11_Click" />
&nbsp; .</p>
    <p class="auto-style24">
        <div class="auto-style25">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title" DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="794px">
            <Columns>
                <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:HyperLinkField DataNavigateUrlFields="title" DataNavigateUrlFormatString="DetailsView.aspx?ID={0}" HeaderText="상세보기" Text="상세보기" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT * FROM [Community]" DeleteCommand="DELETE FROM [Community] WHERE [title] = @title" InsertCommand="INSERT INTO [Community] ([title], [Time], [nickname], [Text]) VALUES (@title, @Time, @nickname, @Text)" UpdateCommand="UPDATE [Community] SET [Time] = @Time, [nickname] = @nickname, [Text] = @Text WHERE [title] = @title">
            <DeleteParameters>
                <asp:Parameter Name="title" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="Text" Type="String" />
                <asp:Parameter Name="title" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style24">
        &nbsp;</p>
    <p class="auto-style24">
        &nbsp;</p>
    <p class="auto-style24">
        &nbsp;</p>
    <p class="auto-style24">
        &nbsp;</p>
    </asp:Content>

