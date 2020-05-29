<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Community_로그인.master" AutoEventWireup="true" CodeFile="Detailsview.aspx.cs" Inherits="Community_Detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="384px" Width="493px" AutoGenerateRows="False" DataKeyNames="title" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="title" HeaderText="title" ReadOnly="True" SortExpression="title" />
                <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT * FROM [Community] WHERE ([title] = @title)">
            <SelectParameters>
                <asp:QueryStringParameter Name="title" QueryStringField="ID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/돌아가기 - 버튼.png" OnClick="ImageButton11_Click" />
    </p>
    <p>
    </p>
</asp:Content>

