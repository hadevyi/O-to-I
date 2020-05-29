<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그인.master" AutoEventWireup="true" CodeFile="회원용Diet_로그인.aspx.cs" Inherits="Diet_회원용Diet_로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            width: 800px;
        }
        .auto-style28 {
            width: 99px;
            height: 20px;
        }
        .auto-style29 {
            width: 100px;
            height: 20px;
        }
        .auto-style30 {
            width: 100px;
            text-align: center;
            color: #A8755B;
            height: 20px;
        }
        .auto-style31 {
            width: 99px;
            text-align: center;
            color: #A8755B;
            height: 20px;
        }
        .auto-style32 {
            width: 100%;
        }
        .auto-style33 {
            width: 20px;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            text-align: right;
        }
        .auto-style46 {
            width: 800px;
            height: 110px;
        }
        .auto-style52 {
            width: 133px;
            height: 36px;
        }
        .auto-style53 {
            width: 133px;
            text-align: center;
            height: 36px;
        }
        .auto-style54 {
            width: 133px;
            height: 37px;
        }
        .auto-style55 {
            width: 133px;
            text-align: center;
            height: 37px;
        }
        .auto-style56 {
            text-align: center;
            color: #CBA28C;
        }
        .auto-style57 {
            text-align: center;
            color: #CDA38D;
        }
    .auto-style58 {
        width: 99px;
        height: 23px;
    }
    .auto-style59 {
        width: 100px;
        height: 23px;
    }
    .auto-style60 {
        width: 100px;
        height: 23px;
        text-align: center;
    }
    .auto-style61 {
        width: 99px;
        height: 23px;
        text-align: center;
    }
    .auto-style62 {
        width: 99px;
        height: 36px;
    }
    .auto-style63 {
        width: 99px;
        height: 36px;
        text-align: center;
        color: #A8755B;
    }
    .auto-style64 {
        width: 100px;
        height: 36px;
        text-align: center;
    }
    .auto-style65 {
        width: 100px;
        height: 36px;
    }
    .auto-style66 {
        width: 100px;
        height: 36px;
        text-align: center;
        color: #A8755B;
    }
        .auto-style68 {
            text-align: center;
            color: #BC9A89;
        }
        .auto-style69 {
            font-size: small;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/회원용 Diet - 메뉴아이콘.png" />
    </p>
    <p class="auto-style68">
        <strong>회원님이 섭취하신 음식을 선택하면 그 칼로리가 추가되며, 알맞는 운동방법을 추천해드립니다.</strong></p>
    <p class="auto-style68">
        <strong>혹 원하는 음식이 없으신 경우 메뉴추가로 메뉴를 추가해주세요.</strong></p>
    <p class="auto-style34">
        &nbsp;</p>
    <table class="auto-style22">
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style31"><strong>한식</strong></td>
            <td class="auto-style30"><strong>양식</strong></td>
            <td class="auto-style30"><strong>중식</strong></td>
            <td class="auto-style30"><strong>일식</strong></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style58"></td>
            <td class="auto-style58">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="한식" Name="menu" QueryStringField="한식" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style59">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="양식" Name="menu" QueryStringField="양식" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style59">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="중식" Name="menu" QueryStringField="중식" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style59">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="일식" Name="menu" QueryStringField="일식" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style59"></td>
        </tr>
        <tr>
            <td class="auto-style62"></td>
            <td class="auto-style63">
                <strong>인스턴트</strong></td>
            <td class="auto-style66">
                <strong>과일</strong></td>
            <td class="auto-style66">
                <strong>기타</strong></td>
            <td class="auto-style64">
            </td>
            <td class="auto-style65"></td>
        </tr>
        <tr>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style61">
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="인스턴트" Name="menu" QueryStringField="인스턴트" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style60">
                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="과일" Name="menu" QueryStringField="과일" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style60">
                <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource7" DataTextField="Id" DataValueField="kcal" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpress2ConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [kcal] FROM [Food_db] WHERE ([menu] = @menu)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="기타" Name="menu" QueryStringField="기타" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style60">
                &nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style32">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34" colspan="2">
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
&nbsp;님이 섭취하신 칼로리는 총&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" Width="119px" Enabled="False"></asp:TextBox>
&nbsp;입니다.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34" colspan="2">
                <asp:Label ID="Label18" runat="server" CssClass="auto-style69"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style35">섭취한 음식</td>
            <td class="auto-style34">섭취한 칼로리&nbsp;&nbsp; .</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34" colspan="2">
                <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="300px"></asp:ListBox>
&nbsp;
                <asp:ListBox ID="ListBox2" runat="server" Height="300px" Width="200px"></asp:ListBox>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton13" runat="server" Height="25px" ImageUrl="~/IMAGE/메뉴추가 - 버튼.png" OnClick="ImageButton13_Click" />
&nbsp;
                <asp:ImageButton ID="ImageButton14" runat="server" Height="25px" ImageUrl="~/IMAGE/추천운동 - 버튼.png" OnClick="ImageButton14_Click" />
            &nbsp;
                <asp:ImageButton ID="ImageButton18" runat="server" Height="25px" ImageUrl="~/IMAGE/초기화 - 버튼.png" OnClick="ImageButton18_Click" />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <br />
        <table class="auto-style46">
            <tr>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style53">음식종류</td>
                <td class="auto-style53">음식이름</td>
                <td class="auto-style53">음식칼로리</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style55">
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>한식</asp:ListItem>
                        <asp:ListItem>양식</asp:ListItem>
                        <asp:ListItem>중식</asp:ListItem>
                        <asp:ListItem>일식</asp:ListItem>
                        <asp:ListItem>인스턴트</asp:ListItem>
                        <asp:ListItem>과일</asp:ListItem>
                        <asp:ListItem>기타</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:ImageButton ID="ImageButton15" runat="server" Height="25px" ImageUrl="~/IMAGE/등록 - 버튼.png" OnClick="ImageButton15_Click" />
                </td>
                <td class="auto-style54">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style54"></td>
                <td class="auto-style54"></td>
                <td class="auto-style54"></td>
                <td class="auto-style55">
                    <asp:ImageButton ID="ImageButton16" runat="server" Height="25px" ImageUrl="~/IMAGE/숨기기 - 버튼.png" OnClick="ImageButton16_Click" />
                </td>
                <td class="auto-style54"></td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style34">
            <table class="auto-style32">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Image ID="Image5" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/200이하 - 런지.png" />
                    </td>
                    <td>
                        <asp:Image ID="Image6" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/200이하 - 레터럴 레이즈.png" />
                    </td>
                    <td>
                        <asp:Image ID="Image7" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/200이하 - 탁구.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3"><strong>&lt;런지&gt;</strong></td>
                    <td class="auto-style3"><strong>&lt;레터럴 레이즈&gt;</strong></td>
                    <td class="auto-style3"><strong>&lt;탁구&gt;</strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style32">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style34">
                    <asp:Image ID="Image8" runat="server" Height="150px" ImageUrl="~/IMAGE/Diet - 운동/500이하 - 싯업.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image9" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/500이하 - 스텝업.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image10" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/500이하 - 농구.png" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style56"><strong>&lt;싯업&gt;</strong></td>
                <td class="auto-style56"><strong>&lt;스텝업&gt;</strong></td>
                <td class="auto-style56"><strong>&lt;농구&gt;</strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style32">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style34">
                    <asp:Image ID="Image11" runat="server" Height="150px" ImageUrl="~/IMAGE/Diet - 운동/800이하 - V업.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image12" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/800이하 - 팔 벌려뛰기.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image13" runat="server" Height="200px" ImageUrl="~/IMAGE/Diet - 운동/800이하 - 배드민턴.png" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style57"><strong>&lt;V업&gt;</strong></td>
                <td class="auto-style57"><strong>&lt;팔 벌려 뛰기&gt;</strong></td>
                <td class="auto-style57"><strong>&lt;배드민턴&gt;</strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style32">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style34">
                    <asp:Image ID="Image14" runat="server" Height="150px" ImageUrl="~/IMAGE/Diet - 운동/800이상 - 버피 테스트.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image15" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/800이상 - 점프 스쿼트.png" />
                </td>
                <td class="auto-style34">
                    <asp:Image ID="Image16" runat="server" Height="250px" ImageUrl="~/IMAGE/Diet - 운동/800이상 - 축구.png" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style56"><strong>&lt;버피 테스트&gt;</strong></td>
                <td class="auto-style56"><strong>&lt;점프 스쿼트&gt;</strong></td>
                <td class="auto-style56"><strong>&lt;축구&gt;</strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
</asp:Content>

