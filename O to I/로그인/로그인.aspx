<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/로그인 창.master" AutoEventWireup="true" CodeFile="로그인.aspx.cs" Inherits="로그인_로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            text-align: center;
            color: #A8755B;
        }
        .auto-style24 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style21">
        <br />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/IMAGE/아이콘 9.png" />
    </p>
    <p class="auto-style23">
        <strong>반갑습니다! O to I 입니다!</strong></p>
    <table class="auto-style22">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style23"><strong>ID </strong> </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style23"><strong>PassWord</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="164px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/로그인 - 버튼.png" OnClick="ImageButton9_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

