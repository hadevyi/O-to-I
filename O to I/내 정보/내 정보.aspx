<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/내 정보.master" AutoEventWireup="true" CodeFile="내 정보.aspx.cs" Inherits="내_정보_내_정보" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style18 {
        width: 800px;
            height: 142px;
        }
    .auto-style29 {
        width: 100%;
        height: 159px;
    }
    .auto-style31 {
            width: 247px;
            text-align: right;
            color: #A8755B;
            height: 26px;
        }
    .auto-style32 {
        width: 133px;
        text-align: center;
        height: 26px;
    }
    .auto-style35 {
        width: 247px;
        text-align: right;
        color: #A8755B;
        height: 27px;
    }
    .auto-style36 {
        width: 133px;
        text-align: center;
        height: 27px;
    }
    .auto-style40 {
        width: 147px;
        height: 26px;
    }
    .auto-style41 {
        width: 133px;
        height: 27px;
    }
    .auto-style43 {
        width: 133px;
        text-align: right;
        height: 27px;
    }
    .auto-style44 {
        font-size: small;
        color: #FF0000;
    }
    .auto-style45 {
        height: 25px;
    }
        .auto-style49 {
            width: 247px;
            height: 27px;
        }
        .auto-style52 {
            width: 133px;
            text-align: right;
            color: #A8755B;
            height: 23px;
        }
        .auto-style54 {
            width: 247px;
            text-align: right;
            color: #A8755B;
            height: 25px;
        }
        .auto-style55 {
            width: 133px;
            text-align: center;
            height: 25px;
        }
        .auto-style58 {
            width: 247px;
            text-align: right;
            color: #A8755B;
            height: 28px;
            font-size: small;
        }
        .auto-style59 {
            width: 133px;
            text-align: center;
            height: 28px;
        }
        .auto-style61 {
            width: 147px;
            height: 28px;
        }
        .auto-style62 {
            width: 294px;
            height: 28px;
        }
        .auto-style63 {
            width: 294px;
            height: 26px;
        }
        .auto-style64 {
            width: 294px;
            height: 27px;
        }
        .auto-style65 {
            width: 147px;
            height: 27px;
        }
        .auto-style70 {
            width: 133px;
            height: 23px;
        }
        .auto-style71 {
            width: 133px;
            text-align: right;
            color: #A8755B;
            height: 24px;
        }
        .auto-style72 {
            width: 133px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
&nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="50px" ImageUrl="~/IMAGE/기본정보 - 메뉴아이콘.png" />
</p>
<table class="auto-style18">
    <tr>
        <td class="auto-style52"><strong>이름 :</strong></td>
        <td class="auto-style70">
            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style70"></td>
        <td class="auto-style70"></td>
        <td class="auto-style70"></td>
        <td class="auto-style70"></td>
    </tr>
    <tr>
        <td class="auto-style52"><strong>ID :</strong></td>
        <td class="auto-style70">
            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style70">&nbsp;</td>
        <td class="auto-style70">&nbsp;</td>
        <td class="auto-style70">&nbsp;</td>
        <td class="auto-style70">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style71"><strong>성별 :</strong></td>
        <td class="auto-style72">
            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style71"><strong>닉네임 :</strong></td>
        <td class="auto-style72">
            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style71"><strong>이메일 :</strong></td>
        <td class="auto-style72">
            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style72"></td>
        <td class="auto-style72"></td>
        <td class="auto-style72"></td>
        <td class="auto-style72"></td>
    </tr>
    <tr>
        <td class="auto-style71"><strong>체질 :</strong></td>
        <td class="auto-style72">
            <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
        <td class="auto-style72">&nbsp;</td>
    </tr>
</table>
<br />
<br />
&nbsp;&nbsp;&nbsp;
<asp:Image ID="Image7" runat="server" Height="50px" ImageUrl="~/IMAGE/정보수정 - 메뉴아이콘.png" />
    <br />
<br />
<table class="auto-style29">
    <tr>
        <td class="auto-style54"><strong>새 비밀번호 :</strong></td>
        <td class="auto-style55">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style45" colspan="2">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" CssClass="auto-style44" EnableClientScript="False" ErrorMessage="비밀번호가 일치하지 않습니다."></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style58"><strong>새 비밀번호 확인 :</strong></td>
        <td class="auto-style59">
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style61">
            <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/비밀번호 바꾸기 - 버튼.png" OnClick="ImageButton9_Click" Width="129px" />
        </td>
        <td class="auto-style62">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" EnableClientScript="False" Enabled="False" ErrorMessage="비밀번호는 숫자 또는 소문자로 6~10글자입니다." ValidationExpression="[a-z|\d]{6,10}" CssClass="auto-style44"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style31"><strong>새 닉네임 :</strong></td>
        <td class="auto-style32">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style40">
            <asp:ImageButton ID="ImageButton10" runat="server" Height="25px" ImageUrl="~/IMAGE/닉네임 바꾸기 - 버튼.png" OnClick="ImageButton10_Click" />
        </td>
        <td class="auto-style63">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BorderStyle="None" ControlToValidate="TextBox9" EnableClientScript="False" Enabled="False" ErrorMessage="별명은 한글 5자 이하 또는 숫자나 문자 10글자 이하입니다." ValidationExpression="([가-힇]{1,5}|[a-z|0-9]{1,10})" CssClass="auto-style44" Width="369px"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style35"><strong>새 이메일 :</strong></td>
        <td class="auto-style36">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style65">
            <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/이메일 바꾸기 - 버튼.png" OnClick="ImageButton11_Click" />
        </td>
        <td class="auto-style64">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox10" EnableClientScript="False" Enabled="False" ErrorMessage="이메일 형식에 맞게 입력해주세요" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style44"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style49"></td>
        <td class="auto-style43">
            &nbsp;</td>
        <td class="auto-style65"></td>
        <td class="auto-style64"></td>
    </tr>
    <tr>
        <td class="auto-style49">&nbsp;</td>
        <td class="auto-style41">&nbsp;</td>
        <td class="auto-style65">&nbsp;</td>
        <td class="auto-style64">&nbsp;</td>
    </tr>
</table>
<br />
<br />
</asp:Content>

