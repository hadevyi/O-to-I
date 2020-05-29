<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/CustomerService_로그인.master" AutoEventWireup="true" CodeFile="고객센터_로그인_작성.aspx.cs" Inherits="Customer_Service_고객센터_로그인_작성" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            width: 100px;
        }
        .auto-style23 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/IMAGE/고객센터 문의 작성 - 내부.png" />
    </p>
    <p>
        <table class="auto-style21">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>작성자 :
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>비밀번호 :
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td colspan="2">&nbsp; 제목 :
                    <asp:TextBox ID="TextBox3" runat="server" Width="528px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="184px" Width="560px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td colspan="2" class="auto-style23">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton9_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <br />
    </p>
</asp:Content>

