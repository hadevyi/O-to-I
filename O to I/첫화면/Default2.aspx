<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/첫화면_로그인.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="첫화면_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            color: #A8755B;
        }
        .auto-style28 {
            text-align: center;
            color: #A8755B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style23">
        &nbsp;</p>
    <p class="auto-style28">
        <strong>안녕하세요! O to I (오투아이)입니다!</strong></p>
    <p class="auto-style28">
        <strong>회원님의 키, 몸무게와 회원가입 시 입력된 체질을 바탕으로 알맞은 정보를 제공합니다.</strong></p>
    <p class="auto-style28">
        <strong>키와 몸무게가 바뀐 경우 아래 입력하여 바꾸어주세요!</strong></p>
<p>
    <table class="auto-style21">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23"><span class="auto-style24">키 :</span>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
                <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton9_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23"><span class="auto-style24">몸무게 :</span>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;
                <asp:ImageButton ID="ImageButton10" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton10_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
    <p class="auto-style23">
        <asp:Image ID="Image4" runat="server" Height="450px" ImageUrl="~/IMAGE/첫화면 사진.jpg" />
</p>
<p>
    &nbsp;</p>
    <table class="auto-style21">
        <tr>
            <td>&nbsp;</td>
            <td>총 접속자 :
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>접속 시간 :
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
<p>
</p>
</asp:Content>

