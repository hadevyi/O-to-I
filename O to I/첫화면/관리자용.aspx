<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/첫화면_로그인.master" AutoEventWireup="true" CodeFile="관리자용.aspx.cs" Inherits="첫화면_관리자용" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            width: 800px;
        }
        .auto-style27 {
            width: 266px;
        }
        .auto-style28 {
            width: 266px;
            text-align: right;
        }
        .auto-style29 {
            color: #A8755B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style21">
        <br />
        <br />
        <span class="auto-style29"><strong>안녕하세요 O to I 관리자용 아이디로 로그인하셨습니다.</strong></span><strong><br class="auto-style29" />
        <br class="auto-style29" />
        </strong><span class="auto-style29"><strong>아래 목록은 현재 O to I를 이용하고 있는 회원들의 정보입니다.</strong></span><strong><br class="auto-style29" />
        <br class="auto-style29" />
        <br class="auto-style29" />
        </strong><span class="auto-style29"><strong>현재 페이지에서 회원들의 정보를 열람하거나 불량회원을 탈퇴시킬 수 있습니다.</strong></span><br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/회원정보 열람 - 버튼.png" OnClick="ImageButton9_Click" />
&nbsp;
        <asp:ImageButton ID="ImageButton10" runat="server" Height="25px" ImageUrl="~/IMAGE/불량유저 탈퇴 - 버튼.png" OnClick="ImageButton10_Click" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <div class="auto-style22">
                <asp:Image ID="Image4" runat="server" Height="40px" ImageUrl="~/IMAGE/회원정보 열람 - 내부이밎.png" />
                <br />
                <div class="auto-style21">
                    <asp:Table ID="Table1" runat="server" GridLines="Both" Width="797px">
                    </asp:Table>
                </div>
                <br />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style22">
                <asp:Image ID="Image5" runat="server" Height="40px" ImageUrl="~/IMAGE/불량유저 탈퇴 - 내부이미지.png" />
                <br />
                <br />
                <table class="auto-style23">
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style27">ID :
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style27">
                            <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton11_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">
                            <asp:Label ID="Label16" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style27">&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </div>
        </asp:Panel>
        <br />
    </div>
</asp:Content>

