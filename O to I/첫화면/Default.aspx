<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/첫화면_로그아웃.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="첫화면_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style20 {
            width: 100%;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            color: #A8755B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style20">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21"><span class="auto-style22"><strong>안녕하세요! O to I(오투아이)입니다!</strong></span><strong><br class="auto-style22" />
                <br class="auto-style22" />
                </strong><span class="auto-style22"><strong>다이어트와 관련된 정보들을 나눌 수 있는 사이트입니다.</strong></span><strong><br class="auto-style22" />
                <br class="auto-style22" />
                </strong><span class="auto-style22"><strong>비로그인 시 다양한 정보를 이용할 수 없으니 로그인 또는 회원가입을 해주세요!</strong></span><br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21">
                <br />
                <asp:Image ID="Image4" runat="server" Height="350px" ImageUrl="~/IMAGE/첫화면 사진.jpg" />
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>현재 접속자 수 : <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>접속 시간 :
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>

