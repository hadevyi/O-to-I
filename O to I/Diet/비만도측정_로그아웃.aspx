<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그아웃.master" AutoEventWireup="true" CodeFile="비만도측정_로그아웃.aspx.cs" Inherits="Diet_비만도측정_로그아웃" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 800px;
            height: auto;
        }
        .auto-style23 {
            width: 200px;
            height: 33px;
        }
        .auto-style25 {
            height: 25px;
            text-align: right;
            color: #A8755B;
            width: 199px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            text-align: center;
            color: #000000;
        }
        .auto-style29 {
            width: 199px;
            height: 16px;
        }
        .auto-style30 {
            height: 16px;
        }
        .auto-style40 {
            height: 33px;
        }
        .auto-style54 {
            width: 199px;
            height: 30px;
        }
        .auto-style55 {
            color: #A8755B;
        }
        .auto-style56 {
            width: 199px;
            height: 30px;
        }
        .auto-style58 {
            width: 200px;
            height: 30px;
        }
        .auto-style59 {
            width: 199px;
            height: 29px;
        }
        .auto-style60 {
            height: 30px;
            text-align: right;
            color: #A8755B;
            width: 199px;
        }
        .auto-style61 {
            width: 200px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
    <p>
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/비만도 측정 - 메뉴아이콘.png" />
</p>
    <p>
        &nbsp;</p>
    <p class="auto-style28">
        <strong>BMI는 비만을 판정하는 방법의 하나로써,</strong></p>
    <p class="auto-style28">
        <strong>성별에 따라 그 기준이 다르므로 꼭 선택해주세요.</strong></p>
    <p class="auto-style27">
        &nbsp;</p>
    <table class="auto-style21">
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style25"><strong>성별 : </strong> </td>
            <td class="auto-style58">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">남자</asp:ListItem>
                    <asp:ListItem Value="F">여자</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style58"></td>
        </tr>
        <tr>
            <td class="auto-style59"></td>
            <td class="auto-style60"><strong>키 : </strong></td>
            <td class="auto-style61">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style61"></td>
        </tr>
        <tr>
            <td class="auto-style54"></td>
            <td class="auto-style25"><strong>몸무게 : </strong></td>
            <td class="auto-style23">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style54"></td>
            <td class="auto-style54"></td>
            <td class="auto-style23">
                <asp:ImageButton ID="ImageButton13" runat="server" Height="25px" ImageUrl="~/IMAGE/입력완료 - 버튼.png" OnClick="ImageButton13_Click" />
            </td>
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style30" colspan="2">
    <asp:Panel ID="Panel1" runat="server" Height="217px" Width="449px">
        <div class="auto-style27">
            <br />
            <br class="auto-style55" />
            <span class="auto-style55"><strong>입력하신 내용</strong></span><br class="auto-style55" />
            <br />
            <span class="auto-style55">성별 : </span>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
            <br class="auto-style55" />
            <span class="auto-style55">키 : </span>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
            <br class="auto-style55" />
            <span class="auto-style55">몸무게 : </span>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
            <br class="auto-style55" />
            <br class="auto-style55" />
            <br class="auto-style55" />
            <span class="auto-style55">=&gt; BMI 지수 : </span>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
            <br class="auto-style55" />
            <br class="auto-style55" />
            <span class="auto-style55">=&gt; 현재 상태 : </span>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
            <br />
        </div>
    </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <div class="auto-style27">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/IMAGE/아이콘 8.png" />
                        <br />
                        <br />
                        <span class="auto-style55"><strong>잘못입력하셨습니다! 다시 입력해주세요!</strong></span><strong><br class="auto-style55" /> </strong>
                        <br />
                    </div>
                </asp:Panel>
            </td>
            <td class="auto-style30">&nbsp;</td>
        </tr>
        </table>
    <br />
<p>
</p>
</asp:Content>

