<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Community_로그인.master" AutoEventWireup="true" CodeFile="방명록_로그인_작성.aspx.cs" Inherits="Community_방명록_로그인_목록" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 185px;
        }
        .auto-style26 {
            width: 184px;
        }
        .auto-style27 {
            width: 200px;
        }
        .auto-style28 {
            width: 200px;
            height: 25px;
            text-align: right;
            color: #A8755B;
        }
        .auto-style29 {
            width: 200px;
            height: 25px;
        }
        .auto-style30 {
            height: 25px;
        }
        .auto-style31 {
            width: 185px;
            height: 20px;
            text-align: right;
            color: #A8755B;
        }
        .auto-style32 {
            height: 20px;
        }
        .auto-style33 {
            width: 185px;
            text-align: right;
            color: #A8755B;
        }
        .auto-style34 {
            width: 184px;
            text-align: center;
        }
        .auto-style35 {
            width: 200px;
            text-align: center;
        }
        .auto-style36 {
            color: #A8755B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/방명록 - 메뉴아이콘.png" />
    </p>
    <p>
        &nbsp;</p>
    <table class="auto-style24">
        <tr>
            <td class="auto-style28"><strong>작성자 : </strong></td>
            <td class="auto-style29">
                <asp:TextBox ID="TextBox1" runat="server" Width="118px"></asp:TextBox>
            </td>
            <td class="auto-style30" colspan="2"><span class="auto-style36"><strong>작성시간 : </strong></span>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>제목 :</strong></td>
            <td class="auto-style32" colspan="2">&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="402px"></asp:TextBox>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>내용 : </strong></td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server" Height="204px" TextMode="MultiLine" Width="407px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style34">
                <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/돌아가기 - 버튼.png" OnClick="ImageButton11_Click" />
            </td>
            <td class="auto-style35">
                <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" ImageUrl="~/IMAGE/글쓰기 - 버튼.png" OnClick="ImageButton12_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

