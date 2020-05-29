<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Community_로그인.master" AutoEventWireup="true" CodeFile="자유게시판_로그인_작성.aspx.cs" Inherits="Community_자유게시판_로그인_목록" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 20px;
        }
        .auto-style26 {
            text-align: right;
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
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/IMAGE/자유게시판 내용 작성 - 내부.png" />
    </p>
    <table class="auto-style24">
        <tr>
            <td>&nbsp;</td>
            <td>작성자 :
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>작성시간 :
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp; 제목 :
                <asp:TextBox ID="TextBox3" runat="server" Width="677px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style25" colspan="2">
                <br />
&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Height="319px" TextMode="MultiLine" Width="740px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style26">
                <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" ImageUrl="~/IMAGE/돌아가기 - 버튼.png" OnClick="ImageButton12_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton11_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

