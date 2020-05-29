<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그인.master" AutoEventWireup="true" CodeFile="운동방법_로그인.aspx.cs" Inherits="Diet_운동방법_로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style22 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/운동방법 - 메뉴아이콘.png" />
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton13" runat="server" Height="30px" ImageUrl="~/IMAGE/부위별 운동 - 버튼.png" OnClick="ImageButton13_Click" />
&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton14" runat="server" Height="30px" ImageUrl="~/IMAGE/스포츠 운동 - 버튼.png" OnClick="ImageButton14_Click" />
</p>
<asp:Panel ID="Panel1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton15" runat="server" Height="30px" ImageUrl="~/IMAGE/가슴 - 버튼.png" OnClick="ImageButton15_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton16" runat="server" Height="30px" ImageUrl="~/IMAGE/등 - 버튼.png" OnClick="ImageButton16_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton17" runat="server" Height="30px" ImageUrl="~/IMAGE/복부 - 버튼.png" OnClick="ImageButton17_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton18" runat="server" Height="30px" ImageUrl="~/IMAGE/어깨 - 버튼.png" OnClick="ImageButton18_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton19" runat="server" Height="30px" ImageUrl="~/IMAGE/전신 - 버튼.png" OnClick="ImageButton19_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton20" runat="server" Height="30px" ImageUrl="~/IMAGE/허리 - 버튼.png" OnClick="ImageButton20_Click" />
    &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton21" runat="server" Height="30px" ImageUrl="~/IMAGE/허벅지 - 버튼.png" OnClick="ImageButton21_Click" />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server">
        <asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/IMAGE/가슴 - 내부이미지.png" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image6" runat="server" ImageUrl="~/IMAGE/Diet - 운동/가슴 - 1. 푸시업.png" Width="700px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image7" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image8" runat="server" ImageUrl="~/IMAGE/Diet - 운동/가슴 - 2. 벤치 프레스 - 머신.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image9" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image10" runat="server" ImageUrl="~/IMAGE/Diet - 운동/가슴 - 3. 플라이 덤벨, 플랫.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image11" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image12" runat="server" ImageUrl="~/IMAGE/Diet - 운동/가슴 - 4. 딥스.png" Width="700px" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Image ID="Image13" runat="server" Height="50px" ImageUrl="~/IMAGE/등 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image14" runat="server" ImageUrl="~/IMAGE/Diet - 운동/등 - 1. 랫 풀 다운 머신.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image15" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image16" runat="server" ImageUrl="~/IMAGE/Diet - 운동/등 - 2. 로우 - 덤벨, 벤트 오버.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image17" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image18" runat="server" ImageUrl="~/IMAGE/Diet - 운동/등 - 3. 풀업 어시스트.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image19" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image20" runat="server" ImageUrl="~/IMAGE/Diet - 운동/등 - 4. 로우 덤벨, 원 암.png" Width="700px" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:Image ID="Image21" runat="server" Height="50px" ImageUrl="~/IMAGE/복부 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image22" runat="server" ImageUrl="~/IMAGE/Diet - 운동/복부 - 1. 크런치.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image23" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image24" runat="server" ImageUrl="~/IMAGE/Diet - 운동/복부 - 2. 레그 레이즈.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image25" runat="server" CssClass="auto-style22" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image26" runat="server" ImageUrl="~/IMAGE/Diet - 운동/복부 - 3. 싯업.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Image ID="Image27" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image28" runat="server" ImageUrl="~/IMAGE/Diet - 운동/복부 - 4. V업.png" Width="700px" />
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <asp:Image ID="Image29" runat="server" Height="50px" ImageUrl="~/IMAGE/어깨 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image30" runat="server" ImageUrl="~/IMAGE/Diet - 운동/어깨 - 1. 프런트 레이즈.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image31" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image32" runat="server" ImageUrl="~/IMAGE/Diet - 운동/어깨 - 2. 래터럴 레이즈.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image33" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image34" runat="server" ImageUrl="~/IMAGE/Diet - 운동/어깨 - 3. 숄더 프레스.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image35" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image36" runat="server" ImageUrl="~/IMAGE/Diet - 운동/어깨 - 4. 아놀드 프레스.png" Width="700px" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
        <asp:Image ID="Image37" runat="server" Height="50px" ImageUrl="~/IMAGE/전신 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image38" runat="server" ImageUrl="~/IMAGE/Diet - 운동/전신 - 1. 리버스 힙 레이즈.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image39" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image40" runat="server" ImageUrl="~/IMAGE/Diet - 운동/전신 - 2. 팔 벌려 뛰기.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image41" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image42" runat="server" ImageUrl="~/IMAGE/Diet - 운동/전신 - 3. 버피 테스트.png" Width="700px" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel7" runat="server">
        <asp:Image ID="Image43" runat="server" Height="50px" ImageUrl="~/IMAGE/허리 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image44" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허리 - 1. 백 익스텐션.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image45" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image46" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허리 - 2. 데드리프트.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image47" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image48" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허리 - 3. 굿모닝.png" Width="700px" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server">
        <asp:Image ID="Image49" runat="server" Height="50px" ImageUrl="~/IMAGE/허벅지 - 내부이미지.png" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image50" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허벅지 - 1. 스텝업.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image51" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image52" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허벅지 - 2.스쿼트.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image53" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image54" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허벅지 - 3.런지.png" Width="700px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image56" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image55" runat="server" ImageUrl="~/IMAGE/Diet - 운동/허벅지 - 4. 점프 스쿼트.png" Width="700px" />
        <br />
        <br />
    </asp:Panel>
    <br />
</asp:Panel>
    <asp:Panel ID="Panel9" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton22" runat="server" Height="30px" ImageUrl="~/IMAGE/실내 운동 - 버튼.png" OnClick="ImageButton22_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton23" runat="server" Height="30px" ImageUrl="~/IMAGE/실외 운동 - 버튼.png" OnClick="ImageButton23_Click" />
        <br />
        <asp:Panel ID="Panel10" runat="server">
            <asp:Image ID="Image57" runat="server" Height="50px" ImageUrl="~/IMAGE/실내운동 - 내부이미지.png" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image58" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 농구.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image59" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image60" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 배드민턴.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image61" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image62" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 탁구.png" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image63" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image64" runat="server" ImageUrl="~/IMAGE/Diet - 운동/야외 - 태권도.png" Width="700px" />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel11" runat="server">
            <asp:Image ID="Image65" runat="server" Height="50px" ImageUrl="~/IMAGE/실외 운동 - 내부이미지.png" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image66" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 야구.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image67" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image68" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 축구.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image69" runat="server" ImageUrl="~/IMAGE/선.png" Width="700px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image70" runat="server" ImageUrl="~/IMAGE/Diet - 운동/실내 - 테니스.png" Width="700px" />
            <br />
            <br />
        </asp:Panel>
    </asp:Panel>
    <p>
</p>
</asp:Content>

