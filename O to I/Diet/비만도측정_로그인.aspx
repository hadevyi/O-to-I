<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그인.master" AutoEventWireup="true" CodeFile="비만도측정_로그인.aspx.cs" Inherits="Diet_비만도측정_로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            width: 200px;
            height:25px;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            width: 200px;
        }
        .auto-style26 {
            width: 200px;
        }
        .auto-style28 {
            width : 200px;
            height: 25px;
        }
        .auto-style29 {
            width: 200px;
            text-align: right;
            color: #A8755B;
        }
        .auto-style30 {
            width: 200px;
            height: 25px;
            text-align: right;
            color: #A8755B;
        }
        .auto-style31 {
            color: #A8755B;
        }
    .auto-style32 {
        height: 27px;
    }
    .auto-style33 {
        width: 200px;
        height: 27px;
    }
    .auto-style34 {
        width: 200px;
        height: 27px;
        text-align: right;
        color: #A8755B;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/비만도 측정 - 메뉴아이콘.png" />
        <br />
    </p>
    <p class="auto-style24">
        <strong>BMI는 비만을 판정하는 방법의 하나로써,</strong></p>
    <p class="auto-style24">
        <strong>회원님의 기본정보로 검사됩니다.</strong></p>
    <p class="auto-style24">
        <strong>이 곳에서 &#39;키&#39;, &#39;몸무게&#39;를 수정하시려면, &#39;내 정보&#39; 혹은 &#39;첫 화면&#39;에서 수정하시면 됩니다.</strong></p>
    <table class="auto-style22">
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style30"><strong>성별 : </strong> </td>
            <td class="auto-style23">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">남자</asp:ListItem>
                    <asp:ListItem Value="F">여자</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style29"><strong>키 : </strong> </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34"><strong>몸무게 : </strong> </td>
            <td class="auto-style33">
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:ImageButton ID="ImageButton14" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton14_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
                    <div class="auto-style24">
                        <br />
                        <br />
                        <strong><span class="auto-style31">입력내용</span><br class="auto-style31" />
                        <br class="auto-style31" />
                        <span class="auto-style31">성별 : </span>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text="Label"></asp:Label>
                        <br class="auto-style31" />
                        <span class="auto-style31">키 : </span>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style31" Text="Label"></asp:Label>
                        <br class="auto-style31" />
                        <span class="auto-style31">몸무게 : </span>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style31" Text="Label"></asp:Label>
                        <br class="auto-style31" />
                        <br class="auto-style31" />
                        <span class="auto-style31">=&gt; BMI 지수 : </span>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style31" Text="Label"></asp:Label>
                        <br class="auto-style31" />
                        <br class="auto-style31" />
                        <span class="auto-style31">=&gt; 현재 상태 : </span>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style31" Text="Label"></asp:Label>
                        <br class="auto-style31" />
                        <br />
                        </strong>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="auto-style24">
                        <br />
                        <br />
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/IMAGE/아이콘 8.png" />
                        <br />
                        <br />
                        <span class="auto-style31"><strong>잘 못 입력하였습니다! 다시 입력해주세요!</strong></span><br />
                        <br />
                    </div>
                </asp:Panel>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

