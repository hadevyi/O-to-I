<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Community_로그인.master" AutoEventWireup="true" CodeFile="방명록_로그인_목록.aspx.cs" Inherits="Community_방명록_로그인_쓰기" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            color: #A8755B;
        }
        .auto-style27 {
            text-align: left;
        }
        .auto-style28 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/방명록 - 메뉴아이콘.png" />
    </p>
    <table class="auto-style25">
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/글쓰기 - 버튼.png" OnClick="ImageButton11_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="XmlDataSource1" GridLines="Both" Width="548px">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <ItemTemplate>
                        <table class="auto-style25">
                            <tr>
                                <td><span class="auto-style26">작성자 : </span>
                                    <asp:Label ID="nicknameLabel" runat="server" CssClass="auto-style26" Text='<%# Eval("nickname") %>' />
                                </td>
                                <td><span class="auto-style26">제목 : </span>
                                    <asp:Label ID="timeLabel" runat="server" CssClass="auto-style26" Text='<%# Eval("time") %>' />
                                </td>
                                <td><span class="auto-style26">작성시간 : </span>
                                    <asp:Label ID="titleLabel" runat="server" CssClass="auto-style26" Text='<%# Eval("title") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27" colspan="3"><strong>
                                    <br />
                                    <asp:Label ID="dataLabel" runat="server" CssClass="auto-style26" Text='<%# Eval("data") %>' />
                                    <br />
                                    </strong></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p class="auto-style24">
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/방명록.xml"></asp:XmlDataSource>
    </p>
</asp:Content>

