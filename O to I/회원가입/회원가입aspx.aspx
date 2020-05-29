<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/회원가입.master" AutoEventWireup="true" CodeFile="회원가입aspx.aspx.cs" Inherits="회원가입aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style16 {
        width: 100%;
    }
    .auto-style17 {
        color: #FF0000;
        font-size: small;
    }
    .auto-style19 {
        height: 20px;
    }
    .auto-style21 {
        width: 182px;
    }
    .auto-style24 {
        text-align: right;
    }
    .auto-style25 {
        width:120px;
        text-align: center;
    }
    .auto-style26 {
        text-align: left;
    }
        .auto-style29 {
        text-align: center;
        height: 20px;
        width: 128px;
    }
    .auto-style30 {
        width: 128px;
        text-align: center;
    }
    .auto-style31 {
        width: 128px;
        text-align: center;
        height: 30px;
    }
    .auto-style32 {
        height: 30px;
    }
        .auto-style33 {
            width: 100%;
            height: 386px;
        }
        .auto-style34 {
            font-size: small;
            color: #FF0000;
        }
        .auto-style35 {
            width: 120px;
            text-align: center;
            height: 32px;
        }
        .auto-style36 {
            height: 32px;
        }
        .auto-style37 {
            width: 120px;
            text-align: center;
            height: 29px;
        }
        .auto-style38 {
            height: 29px;
        }
    .auto-style39 {
        height: 29px;
        width: 170px;
    }
    .auto-style40 {
        height: 32px;
        width: 170px;
    }
    .auto-style43 {
        height: 29px;
        width: 247px;
    }
    .auto-style44 {
        height: 32px;
        width: 247px;
    }
    .auto-style47 {
        width: 170px;
    }
    .auto-style48 {
        width: 247px;
    }
        .auto-style50 {
            color: #A8755B;
        }
        .auto-style54 {
            text-align: center;
        }
        .auto-style63 {
            width: 199px;
            height: 20px;
        }
        .auto-style65 {
            width: 199px;
            height: 20px;
            color: #A17057;
        }
        .auto-style74 {
            width: 800px;
        }
        .auto-style78 {
            width: 65px;
        }
        .auto-style83 {
            width: 77px;
            height: 20px;
        }
        .auto-style86 {
            width: 65px;
            height: 20px;
        }
        .auto-style87 {
            width: 143px;
            height: 20px;
            text-align: center;
        }
        .auto-style91 {
            width: 77px;
        }
        .auto-style92 {
            width: 143px;
            text-align: center;
        }
        .auto-style93 {
            width: 205px;
            font-size: small;
        }
        .auto-style94 {
            width: 205px;
        }
        .auto-style95 {
            width: 120px;
            text-align: center;
            height: 40px;
        }
        .auto-style96 {
            width: 170px;
            height: 40px;
        }
        .auto-style97 {
            width: 205px;
            height: 40px;
        }
        .auto-style98 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="561px">
        <br />
        <strong>&nbsp;&nbsp; </strong>
        <asp:Image ID="Image7" runat="server" Height="50px" ImageUrl="~/IMAGE/기본정보 - 메뉴아이콘.png" />
        <br />
        <br />
        <br />
    <br />
    <table class="auto-style33">
        <tr>
            <td class="auto-style25"><strong>이름</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style48">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style17" ErrorMessage="[이름]란이 비어있습니다." EnableTheming="True"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>ID</strong></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style44">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style17" ErrorMessage="[ID]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>비밀번호</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style48">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" CssClass="auto-style17" ErrorMessage="[비밀번호]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>비밀번호 확인</strong></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style44">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" CssClass="auto-style17" ErrorMessage="[비밀번호 확인]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style36">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="비밀번호가 다릅니다!" CssClass="auto-style17"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style37"><strong>성별</strong></td>
            <td class="auto-style39">
                <asp:RadioButtonList ID="RadioButtonList23" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">남</asp:ListItem>
                    <asp:ListItem Value="F">여</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td colspan="2" class="auto-style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList23" CssClass="auto-style34" ErrorMessage="[성별]란이 비어있습니다." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style38"></td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>생년월일</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox7" runat="server" Width="72px"></asp:TextBox>
            </td>
            <td class="auto-style93">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" CssClass="auto-style17" ErrorMessage="[생년월일]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="RadioButtonList17" CssClass="auto-style17" ErrorMessage="[생년월일]이 유효하지 않습니다. ex) 971208" ValidationExpression="(0( \d|\d ))?\d\d \d\d(\d \d| \d\d )\d\d"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style35"><strong>닉네임</strong></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td colspan="2" class="auto-style44">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" CssClass="auto-style17" ErrorMessage="[닉네임]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>이메일</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style94">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" CssClass="auto-style17" ErrorMessage="[이메일]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style17" ErrorMessage="알맞은 [이메일] 형식이 아닙니다." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox11"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>신장</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox12" runat="server" Width="97px"></asp:TextBox>
                cm</td>
            <td class="auto-style94">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox12" CssClass="auto-style34" ErrorMessage="[신장]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox12" CssClass="auto-style34" ErrorMessage="140~190cm 사이로 입력해주세요." MaximumValue="190" MinimumValue="140" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style95"><strong>체중</strong></td>
            <td class="auto-style96">
                <asp:TextBox ID="TextBox14" runat="server" Width="98px"></asp:TextBox>
                kg</td>
            <td class="auto-style97">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox14" CssClass="auto-style34" ErrorMessage="[체중]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td colspan="2" class="auto-style98">
                <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="auto-style34" ErrorMessage="40~120kg사이로 입력해주세요." ControlToValidate="TextBox14" MaximumValue="120" MinimumValue="40" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>목표 체중</strong></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox15" runat="server" Width="98px"></asp:TextBox>
                kg</td>
            <td class="auto-style94">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox15" CssClass="auto-style34" ErrorMessage="[목표 체중]란이 비어있습니다."></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox15" CssClass="auto-style34" ErrorMessage="40~120kg사이로 입력해주세요." MaximumValue="120" MinimumValue="40" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
    </table>
    <div class="auto-style24">
        &nbsp;<br />
        <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/IMAGE/다음 - 버튼.png" OnClick="ImageButton9_Click" />
        &nbsp;&nbsp;
    </div>
</asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="797px">
            <div class="auto-style26">
                <br />
                <strong>&nbsp;&nbsp;
                <asp:Image ID="Image8" runat="server" Height="50px" ImageUrl="~/IMAGE/체질체크 - 메뉴아이콘.png" />
                <br />
                </strong>
                <br />
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style30"><strong>체중</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">표준 이상</asp:ListItem>
                                <asp:ListItem Value="2">표준 이하</asp:ListItem>
                                <asp:ListItem Value="3">표준</asp:ListItem>
                                <asp:ListItem Value="4">과체중</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>체격</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">큰 편</asp:ListItem>
                                <asp:ListItem Value="2">가늘다</asp:ListItem>
                                <asp:ListItem Value="3">단단하면서 보통</asp:ListItem>
                                <asp:ListItem Value="4">보통</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>땀</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">땀이 난다</asp:ListItem>
                                <asp:ListItem Value="2">거의 나지 않는다</asp:ListItem>
                                <asp:ListItem Value="3">잠잘 때 많이 난다</asp:ListItem>
                                <asp:ListItem Value="4">보통이다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>물 마시기</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">좋아한다</asp:ListItem>
                                <asp:ListItem Value="2">싫어한다</asp:ListItem>
                                <asp:ListItem Value="3">보통이다.</asp:ListItem>
                                <asp:ListItem Value="4">아무 생각없다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>얼굴</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">둥글다</asp:ListItem>
                                <asp:ListItem Value="2">갸름하다</asp:ListItem>
                                <asp:ListItem Value="3">날카롭다</asp:ListItem>
                                <asp:ListItem Value="4">눈빛이 매섭다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>걸음걸이</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">의젓하다</asp:ListItem>
                                <asp:ListItem Value="2">자연스럽다</asp:ListItem>
                                <asp:ListItem Value="2">몸을 흔든다</asp:ListItem>
                                <asp:ListItem Value="4">성큼성큼 걷는다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>성격</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">속이 엉큼하다</asp:ListItem>
                                <asp:ListItem Value="2">여성적이다</asp:ListItem>
                                <asp:ListItem Value="3">즉흥적이다</asp:ListItem>
                                <asp:ListItem Value="4">통이 크다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>좋아하는 음식</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">육식, 밀가루 음식</asp:ListItem>
                                <asp:ListItem Value="2">생선 빼고 다 좋다</asp:ListItem>
                                <asp:ListItem Value="3">밥을 좋아 한다</asp:ListItem>
                                <asp:ListItem Value="4">야채가 좋다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>음식습관</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">얼큰해야 좋다</asp:ListItem>
                                <asp:ListItem Value="2">뜨거워야 좋다</asp:ListItem>
                                <asp:ListItem Value="3">뜨거우면 싫다</asp:ListItem>
                                <asp:ListItem Value="4">해산물이 좋다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>목소리</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">탁하거나 부드럽다</asp:ListItem>
                                <asp:ListItem Value="2">작고 조용하다</asp:ListItem>
                                <asp:ListItem Value="3">목소리 통이 쉽게 높아진다</asp:ListItem>
                                <asp:ListItem Value="4">우렁차다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>잠</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">어디서나 잘 잔다</asp:ListItem>
                                <asp:ListItem Value="2">잠들기 어렵다</asp:ListItem>
                                <asp:ListItem Value="3">일찍 일어난다</asp:ListItem>
                                <asp:ListItem Value="4">일찍 잔다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>술</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">좋아하고 술주정없다</asp:ListItem>
                                <asp:ListItem Value="1">분위기마다 양이 다르다</asp:ListItem>
                                <asp:ListItem Value="3">빨리 취한다.</asp:ListItem>
                                <asp:ListItem Value="4">과음시 술주정이있다.</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>대인관계</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">원만한다</asp:ListItem>
                                <asp:ListItem Value="2">오래된 친구만 좋다</asp:ListItem>
                                <asp:ListItem Value="3">잘 해주고 욕먹는다</asp:ListItem>
                                <asp:ListItem Value="4">한번 만나면 십년 친구가 된다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>심리</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">형식을 좋아한다</asp:ListItem>
                                <asp:ListItem Value="2">치밀하고 꼼꼼하다</asp:ListItem>
                                <asp:ListItem Value="3">아부를 못한다</asp:ListItem>
                                <asp:ListItem Value="4">변덕이 심하다</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29"><strong>이목구비 생김새</strong></td>
                        <td class="auto-style19">
                            <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">눈 큼, 입술 두터움</asp:ListItem>
                                <asp:ListItem Value="2">눈 동그람</asp:ListItem>
                                <asp:ListItem Value="3">턱 뾰족함, 윗입술 얇음</asp:ListItem>
                                <asp:ListItem Value="4">광대 크고 눈빛 맑음</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>말투</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">더듬거나 천천히함</asp:ListItem>
                                <asp:ListItem Value="2">가끔 똑부러짐</asp:ListItem>
                                <asp:ListItem Value="3">과장함</asp:ListItem>
                                <asp:ListItem Value="4">허풍이 심함</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>몸 특징</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">눈이 자주 아픔</asp:ListItem>
                                <asp:ListItem Value="2">신경을 많이 쓰면 입맛 없음</asp:ListItem>
                                <asp:ListItem Value="3">방귀를 많이 뀐다</asp:ListItem>
                                <asp:ListItem Value="4">쉽게 지치지 않음</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>피부</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">거칠거나 두껍다</asp:ListItem>
                                <asp:ListItem Value="2">부드럽다</asp:ListItem>
                                <asp:ListItem Value="3">매끈하고 탄력있음</asp:ListItem>
                                <asp:ListItem Value="4">두껍고 단단함</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>생리현상</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">땀흘리면 기분이 좋음</asp:ListItem>
                                <asp:ListItem Value="2">소화가 잘 안됨</asp:ListItem>
                                <asp:ListItem Value="3">대변은 하루 한번 봄</asp:ListItem>
                                <asp:ListItem Value="4">소변 양이 많음</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>비슷한 동물</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">소</asp:ListItem>
                                <asp:ListItem Value="2">사슴</asp:ListItem>
                                <asp:ListItem Value="3">말</asp:ListItem>
                                <asp:ListItem Value="4">호랑이</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31"><strong>가치기준</strong></td>
                        <td class="auto-style32">
                            <asp:RadioButtonList ID="RadioButtonList21" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">돈</asp:ListItem>
                                <asp:ListItem Value="2">지위</asp:ListItem>
                                <asp:ListItem Value="3">사랑</asp:ListItem>
                                <asp:ListItem Value="4">술</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style30"><strong>사회생활</strong></td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList22" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">협살을 잘함</asp:ListItem>
                                <asp:ListItem Value="2">사람들을 잘 어루만짐</asp:ListItem>
                                <asp:ListItem Value="3">거의 중간 유지함</asp:ListItem>
                                <asp:ListItem Value="4">만사</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                <div class="auto-style24">
                    <br />
                    &nbsp;
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/IMAGE/완료 - 버튼.png" OnClick="ImageButton11_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                </div>
            </div>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style54">
            <br />
            <asp:Image ID="Image6" runat="server" ImageUrl="~/IMAGE/아이콘 6.png" />
            <br />
            <br />
            <strong><span class="auto-style50">회원님</span></strong><span class="auto-style50"><strong>의 회원가입이 완료되었습니다!<br />
            <br />
            </strong>
            <table class="auto-style74">
                <tr>
                    <td class="auto-style83"></td>
                    <td class="auto-style87">&nbsp;</td>
                    <td class="auto-style87">이름</td>
                    <td class="auto-style87">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style87">&nbsp;</td>
                    <td class="auto-style86"></td>
                </tr>
                <tr>
                    <td class="auto-style91">&nbsp;</td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style92">성별</td>
                    <td class="auto-style92">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style78">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style91">&nbsp;</td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style92">ID</td>
                    <td class="auto-style92">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style78">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style91">&nbsp;</td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style92">이메일</td>
                    <td class="auto-style92">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style78">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style91">&nbsp;</td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style92">닉네임</td>
                    <td class="auto-style92">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style78">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style91">&nbsp;</td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style92">체질 결과</td>
                    <td class="auto-style92">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style92">&nbsp;</td>
                    <td class="auto-style78">&nbsp;</td>
                </tr>
            </table>
            </span>
            <td class="auto-style63"></td>
            <td class="auto-style63"></td>
            
            <tr>
                <td class="auto-style63"></td>
                <td class="auto-style65"></td>
                <td></td>
                <td class="auto-style63"></td>
                <td class="auto-style63"></td>
            </tr>
            <tr>
                <td class="auto-style63">&nbsp;</td>
                <td class="auto-style65"><span><strong>&nbsp;</strong></span></td>
                <span class="auto-style50"><strong>
                <br />
                <br />
                해당 정보로 로그인해주세요!</strong></span>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" ImageUrl="~/IMAGE/홈페이지로 돌아가기 - 버튼.png" OnClick="ImageButton12_Click" />
                <br />
            </tr>
        </div>
    </asp:Panel>
    <br />
    <br />
    </asp:Content>

