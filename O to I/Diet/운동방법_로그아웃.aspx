<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그아웃.master" AutoEventWireup="true" CodeFile="운동방법_로그아웃.aspx.cs" Inherits="Diet_운동방법_로그아웃" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            color: #A8755B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/운동방법 - 메뉴아이콘.png" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton13" runat="server" Height="30px" ImageUrl="~/IMAGE/부위별 운동 - 버튼.png" OnClick="ImageButton13_Click" />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton14" runat="server" Height="30px" ImageUrl="~/IMAGE/스포츠 운동 - 버튼.png" OnClick="ImageButton14_Click" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style21">
            <br />
            <asp:Image ID="Image5" runat="server" ImageUrl="~/IMAGE/아이콘 8.png" />
            <br />
            <span class="auto-style22"><strong>&lt;부위별 운동&gt; 정보는 회원들에게만 공개됩니다!</strong></span><strong><br class="auto-style22" />
            <br class="auto-style22" />
            </strong><span class="auto-style22"><strong>로그인 또는 회원가입을 해주세요.</strong></span><br />
            <br />
            <br />
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton15" runat="server" Height="30px" ImageUrl="~/IMAGE/실내 운동 - 버튼.png" OnClick="ImageButton15_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton16" runat="server" Height="30px" ImageUrl="~/IMAGE/실외 운동 - 버튼.png" OnClick="ImageButton16_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server">
            <asp:Image ID="Image6" runat="server" Height="50px" ImageUrl="~/IMAGE/실내운동 - 내부이미지.png" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image7" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 농구.png" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image8" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image9" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 배드민턴.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image10" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image11" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 탁구.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image12" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image13" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 태권도.png" Width="700px" />
            <br />
            <br />
            <br />
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:Image ID="Image14" runat="server" Height="50px" ImageUrl="~/IMAGE/실외 운동 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image15" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 야구.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image16" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image17" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 축구.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image18" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image19" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 테니스.png" Width="700px" />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>

