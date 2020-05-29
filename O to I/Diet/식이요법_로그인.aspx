<%@ Page Title="" Language="C#" MasterPageFile="~/마스터 페이지/Diet_로그인.master" AutoEventWireup="true" CodeFile="식이요법_로그인.aspx.cs" Inherits="Diet_식이요법_로그인" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            width: 100%;
            height: 404px;
        }
        .auto-style25 {
            text-align: center;
            height: 68px;
        }
        .auto-style26 {
            height: 68px;
        }
        .auto-style27 {
            text-align: center;
            height: 62px;
        }
        .auto-style28 {
            height: 62px;
        }
        .auto-style29 {
            width: 100%;
            height: 371px;
        }
        .auto-style30 {
            width: 100%;
            height: 383px;
        }
        .auto-style31 {
            width: 111px;
            text-align: center;
        }
        .auto-style32 {
            width: 111px;
            text-align: center;
            height: 80px;
        }
        .auto-style33 {
            height: 80px;
        }
        .auto-style34 {
            width: 111px;
            text-align: center;
            height: 119px;
        }
        .auto-style35 {
            height: 119px;
        }
        .auto-style36 {
            width: 108px;
            text-align: center;
        }
        .auto-style37 {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" ImageUrl="~/IMAGE/식이요법 - 메뉴아이콘.png" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton13" runat="server" Height="30px" ImageUrl="~/IMAGE/섭취 식이요법 - 버튼.png" OnClick="ImageButton13_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton14" runat="server" Height="30px" ImageUrl="~/IMAGE/체질 식이요법 - 버튼.png" OnClick="ImageButton14_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton15" runat="server" Height="30px" ImageUrl="~/IMAGE/단백질 다이어트 - 버튼.png" OnClick="ImageButton15_Click" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton16" runat="server" Height="30px" ImageUrl="~/IMAGE/과일 다이어트 - 버튼.png" OnClick="ImageButton16_Click" />
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server">
                <asp:Image ID="Image5" runat="server" Height="50px" ImageUrl="~/IMAGE/단백질 다이어트 - 내부아이콘.png" />
                <br />
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <br />
                            단백질하면 근육을 떠올리기 쉽지만, 사실 근육 뿐만 아니라 머리카락과 손톱 등을<br /> 이루는 원료라고 할 수 있습니다. 그리고 단백질을 섭취하면 탄수화물 음식에 비해<br /> 위에 남아있는 시간이 길어서 포만감이 오래 유지되기 때문에 다이어트에 적합하다고<br /> 볼 수 있습니다. 그리고 단백질은 소화가 어렵기 떄문에 더 많은 에너지가 필요합니다.<br /> 즉, 먹은 양에 비해 살이 덜 찐다는 것입니다.<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/계란.png" Width="750px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>계란</strong><br />
                            <br />
                            고단백 식품 중 가장 저렴하고 쉽게 요리해 드릴 수 있는 것은 바로 계란입니다.<br /> 여러 가지 방법으로 드실 수 있겠지만 다이어트를 생각하신다면 삶은 것이 좋습니다.<br /> 계란은 단백질도 풍부하지만 비타민과 무기질 등 우리 몸에 필요한 다양한 아미노산도<br /> 갖추고 있습니다. 삶은 달걀 1개이 칼로는 80kcal 정도로 아주 적습니다.<br /> 눈건강, 두뇌발달, 숙취해소, 피부미용에도 좋다고 합니다.<br /> 저녁밥 대신 계란 2개 정도를 먹는 것이 다이어트에 가장 적합함입니다.<br /> <br /> </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/고기.png" Width="750px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>고기</strong><br />
                            <br />
                            고기를 먹으며 다이어트를 하는 것은 다른 다이어트 방법에 비해<br /> 비교적 건강하게 살을 뺼 수 있다는 장점이 있습니다.<br /> 날씬해지려는 욕심에 무조건 굶었다가는 건강에 이상이 생기기 마련입니다.<br /> 특히 단백질을 전혀 섭취하지 않으면 병에 대한 면역력까지 떨어져 각종 세균성 질환에 걸리기 쉽습니다.<br /> 하지만 고기를 먹으며 다이어트를 하는 것은 몸에 좋은 양과 질의 단백질을 출분히 섭취하면서<br /> 살을 뺴는 것이기 떄문에 이러한 문제가 생기지 않습니다.<br /> 하지만 이러한 식단을 오랜 기간동안 하는 것은 추천해드리지 않습니다.<br /> 2주 이상 하게 되면 각종 성인병에 걸릴 확률이 높아집니다. 2주 이내로 하시는 것이 좋습니다.<br /> <br /> </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/두부.png" Width="750px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>두부</strong><br />
                            <br />
                            최근 서구에서 &#39;살찌지 않는 치즈&#39;라고 부를 정도로 인기가 좋은 두부는<br /> 고단백 저칼로리로 비만 예방에 최적인 식품이다.<br /> 또한 두무는 콩단백질인 글리시닌과 알부민을 응고시켜 만든 것이므로<br /> 콩의 영양가를 그대로 가지고 있으면서도 소화흡수율이 콩보다 훨씬 높다.<br /> 건강하게 마르고 싶은 사람에게 가장 적당한 다이어트 식품이라 할 수 있다.<br /> 두부 다이어트를 하루 세 끼 식사 중 한 끼를 두무로 먹으면 되는데,<br /> 특히 저녁식사 대신 먹는 것이 효과이다.<br /> <br /> </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/해산물.jpg" Width="750px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>해산물<br /> </strong><br />
                            각종 해산물과 해조류 등을 포함한 수산물은 칼로리가 낮아 포만감이 크고,<br /> 단백질과 미네랄, 비타민 등 필수 영양소를 고루 갖추고 있어 다이어트 식단에 안성맞춤입니다.<br /> 다만 생선을 구우신다면 기름과 소금을 적게 하시는 것이 다이어트에 더욱 도움이 됩니다.<br /> <br /> </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <asp:Image ID="Image10" runat="server" Height="50px" ImageUrl="~/IMAGE/과일 다이어트 - 메뉴아이콘.png" />
                <br />
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style23">
                            <br />
                            다이어트를 위해 밥 대신 과일을 찾으시는 분들이 많을거라 생각합니다.<br /> 맛도 좋은데다가 칼로리도 적고 비타민도 풍부해 건강에 도움이 되기 때문입니다.<br /> 하지만 과일 다이어트라고 해서 삼시세끼를 과일로 먹는 것은 요요를 부르는 지름길 입니다.<br /> 하루 한 끼 정도 밥 대신 섭취하시거나 식사 전에 드셔서 식사량을 줄이는 것이 옳은 방법입니다.<br /> 효육적인 다이어트를 위해 도움이 되는 과일 6가지를 소개해 드리겠습니다.<br /> </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/자몽.png" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>자몽<br /> </strong>
                            <br />
                            자몽의 쓴 맛은 식욕을 억제해 주는 효과가 있고, 지방이 잘 흡수되지 않게 도움을 줍니다.<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image12" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/아오리사과.png" Width="600px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>아오이 사과</strong><br />
                            <br />
                            푸른 사과인 아오리는 빨간 사과보다 당도가 낮고 아침에 먹으면 소화에 도움이 되는<br /> 과일입니다. 다이어트로 생긴 변비 치료에도 아주 좋습니다.<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image13" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/키위.png" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>키위<br /> </strong>
                            <br />
                            키위 작은 크기 한 개는 30kcal 정도로 열량이 낮으며 GI 수치도 낮아 살 찔 걱정은<br /> 하지 않으셔도 좋습니다. 비타민과 섬유질이 풍부해 변비 예방에도 좋습니다.<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image14" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/감.png" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>감</strong><br />
                            <br />
                            감에는 칼륨이 풍부하게 함유되어 있어 체내의 나트륨을 배출해줘 부기를 빼준다고<br /> 합니다. 부종형 하체비만에 감을 먹으면 효과가 좋습니다.<br /> </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image15" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/토마토.jpg" Width="600px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>토마토<br /> </strong>
                            <br />
                            토마토는 칼로리는 낮지만, 포만감이 높아서 다이어트를 할 때 먹으면 좋은 음식중<br /> 하나입니다. 그리고 토마토는 암과 고혈압을 예방해 주기도 합니다.<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <asp:Image ID="Image16" runat="server" ImageUrl="~/IMAGE/Diet - 식이요법/배.png" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <strong>배<br /> </strong>
                            <br />
                            배는 달달하지만 칼로리가 높지 않은 과일로 한 조각에 25kcal 정도로 열량이 낮습니다.<br /> 섬유질이 풍부해 장 건강이 안 좋을 때도 좋습니다.<br />
                            <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton17" runat="server" Height="30px" ImageUrl="~/IMAGE/태양인 - 버튼.png" OnClick="ImageButton17_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton18" runat="server" Height="30px" ImageUrl="~/IMAGE/태음인 - 버튼.png" OnClick="ImageButton18_Click" />
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton19" runat="server" Height="30px" ImageUrl="~/IMAGE/소양인 - 버튼.png" OnClick="ImageButton19_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton20" runat="server" Height="30px" ImageUrl="~/IMAGE/소음인 - 버튼.png" OnClick="ImageButton20_Click" />
        <br />
        <br />
        <asp:Panel ID="Panel6" runat="server">
            <asp:Image ID="Image17" runat="server" Height="50px" ImageUrl="~/IMAGE/태양인 - 내부아이콘.png" />
            <br />
            <br />
            <table class="auto-style22">
                <tr>
                    <td class="auto-style23">
                        <asp:Image ID="Image18" runat="server" ImageUrl="~/IMAGE/Diet - 체질/태양인.png" Width="650px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style24">
                            <tr>
                                <td class="auto-style23" style="border-color: #E7D4C6; border-style: none solid none none;">체질 특성</td>
                                <td style="border-style: none">- 상체는 발달하고 하체는 빈약한 체형이다.<br />
                                    <br />
                                    - 얼굴이 보름달 처럼 둥글고 비교적 근육양이 적은 편이다.<br />
                                    <br />
                                    - 하체가 약하다보니 누워있거나 기대있는 것을 좋아하고 오래 걷지 못한다.<br />
                                    <br />
                                    - 사물에 대해 관찰을 잘 하고 통할력이 좋다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style23" style="border-color: #D2AF95; border-style: none solid none none;">좋은 음식</td>
                                <td style="border-style: none">따뜻한 음식보다는 차가우면서 자극이 덜한 단백질 류의 음식이 좋다.<br />
                                    <br />
                                    음식으로는 냉한 성질을 가진 것이 좋다.<br />
                                    <br />
                                    - 추천 음식 : 참외, 굴, 오이, 배추, 상추, 미역, 다시마, 보리 등<br /> - 추천 과일 : 무과, 포도, 앵두 등</td>
                            </tr>
                            <tr>
                                <td class="auto-style27" style="border-color: #AF7549; border-style: none solid none none;">운동</td>
                                <td class="auto-style28" style="border-style: none">태양인은 하체가 약하기 때문에 태양인에게는 맞는 운동이 많지 않다.<br /> 그렇기 때문에 중량이 무거운 운동보다는 가볍게 자전거를 타거나 체조 같은 것들이 좋다. </td>
                            </tr>
                            <tr>
                                <td class="auto-style25" style="border-color: #6A472D; border-style: none solid none none;">다이어트 음식</td>
                                <td class="auto-style26" style="border-style: none">간이 좋지않기 때문에 자극적이고 맵고 뜨거운 음식은 삼가야 한다.<br /> 다이어트 시 좋은 음식은 해산물이나 채소류 그리고 토마토, 배, 포도, 딸기, 오렌지 등이 있다.</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel7" runat="server">
            <asp:Image ID="Image19" runat="server" Height="50px" ImageUrl="~/IMAGE/태음인 - 내부아이콘.png" />
            <br />
            <br />
            <table class="auto-style22">
                <tr>
                    <td class="auto-style23">
                        <asp:Image ID="Image20" runat="server" ImageUrl="~/IMAGE/Diet - 체질/태음인.png" Width="650px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style29">
                            <tr>
                                <td class="auto-style37" style="border-right-style: solid; border-color: #E7D4C6">체질 특성</td>
                                <td>- 복부 위주로 골고루 찌며, 비만이 되기 쉬운 체질이다.<br />
                                    <br />
                                    - 소화기능도 좋도 체질 특성상 흡수하고 모으는 기운이 많아 똑같이 먹어도 살찌기 더 쉽다.<br />
                                    <br />
                                    - 일반적으로 움직이는 것을 싫어하고 약간 느긋한 성격을 가진 분이 많다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style37" style="border-right-style: solid; border-color: #D2AF95">좋은 음식</td>
                                <td>콩, 율무가 포만감을 주고 식욕 제어에 도움이 된다.<br />
                                    <br />
                                    또한 고사리, 도라지, 밤, 호두, 은행, 무, 마, 콩나물 등도 좋다.<br />
                                    <br />
                                    - 추천 음식 : 쇠고기, 콩, 고구마, 율무, 미역, 다시마, 김 등 호흡기를 튼튼하게 해주는 음식<br /> - 추천 과일 : 살구, 자두, 배, 복숭아 등</td>
                            </tr>
                            <tr>
                                <td class="auto-style37" style="border-right-style: solid; border-color: #AF7549">운동</td>
                                <td>과도하게 땀을 내는 운동보다는 적절한 전신 근력 운동을 하되 과도하게 하지 않도록 한다.<br /> 소음인의 경우 조금만 움직여도 쉽게 지치기 때문에 가벼운 운동을 짧게 자주하는 것이 좋다.<br /> 윗몸일으키기, 팔굽혀펴기 등 상체를 튼튼하게 하는 운동이 좋다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style37" style="border-right-style: solid; border-color: #6A472D">다이어트 음식</td>
                                <td>다이어트에 좋은 음식으로는 닭 가슴살, 고춧가루, 시금치, 양파, 미나리, 옥수수 등 따뜻한 성질의 음식이 있다. </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel8" runat="server">
            <asp:Image ID="Image21" runat="server" Height="50px" ImageUrl="~/IMAGE/소양인 - 내부아이콘.png" />
            <br />
            <br />
            <table class="auto-style22">
                <tr>
                    <td class="auto-style23">
                        <asp:Image ID="Image22" runat="server" ImageUrl="~/IMAGE/Diet - 체질/소양인.png" Width="650px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style30">
                            <tr>
                                <td class="auto-style31" style="border-right-style: solid; border-color: #E7D4C6">체질 특성</td>
                                <td>- 복부 위주로 골고루 찌며, 비만이 되기 쉬운 체질이다.<br />
                                    <br />
                                    - 소화기능도 좋고 체질 특성상 흡수하고 모으는 기운이 많이 똑같이 먹어도 살 찌기 더 쉽다.<br />
                                    <br />
                                    - 일반적으로 움직이는 것을 싫어하고 약간 느긋한 성격을 가지시는 분들이 많다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style34" style="border-right-style: solid; border-color: #D2AF95">좋은 음식</td>
                                <td class="auto-style35">콩, 율무가 포만감으로 주고 식욕제어에도 도움이 된다.<br />
                                    <br />
                                    고사리, 도라지, 밤, 호두, 은행, 무, 마, 콩나물 등도 좋다.<br />
                                    <br />
                                    - 추천 음식 : 쇠고기, 콩, 고구마, 율무, 미역, 다시마, 김 등 호흡기를 튼튼하게 해주는 음식<br /> - 추천 과일 : 살구, 자두, 배, 복숭아 등</td>
                            </tr>
                            <tr>
                                <td class="auto-style32" style="border-right-style: solid; border-color: #AF7549">운동</td>
                                <td class="auto-style33">지구력이 부족한 타입으로 처음부터 무리하게 운동을 하는 것보다, 가볍게 길게 할 수 있는 운동을 찾는 것이 좋다. 대개 전신비만이 많으므로 땀을 내는 유산소운동이 많이 필요하다.<br /> 조깅, 등산, 수영, 탁구, 축구, 농구 등 활동을 많이 하는 운동이나 칼로리를 많이 발생시킬 수 있는 운동이 좋다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style31" style="border-style: none solid none none; border-color: #6A472D">다이어트 음식</td>
                                <td>고기를 많이 먹지 말고 단백질로 식단을 짜면 다이어트에 도움이 된다.<br />
                                    <br />
                                    다이어트 추천 음식으로 콩, 우유, 고구마, 매실 등이 좋다.</td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel9" runat="server">
            <asp:Image ID="Image23" runat="server" Height="50px" ImageUrl="~/IMAGE/소음인 - 내부아이콘.png" />
            <br />
            <br />
            <table class="auto-style22">
                <tr>
                    <td class="auto-style23">
                        <asp:Image ID="Image24" runat="server" ImageUrl="~/IMAGE/Diet - 체질/소음인.png" Width="650px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style22">
                            <tr>
                                <td class="auto-style36" style="border-right-style: solid; border-color: #E7D4C6">체질 특성</td>
                                <td>- 복부 위주로 골고루 찌며, 비만이 되기 쉬운 체질이다.<br />
                                    <br />
                                    - 소화기능도 좋고, 체질특성상 흡수하고 모으는 기운이 많아 똑같이 먹어도 살찌기 쉽다.<br />
                                    <br />
                                    - 일반적으로 움직이는 것을 싫어하고 약간 느긋한 성격을 가지신 분들이 많다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style36" style="border-right-style: solid; border-color: #D2AF95">좋은 음식</td>
                                <td>콩, 율무가 포만감으로 주고 식욕제어에도 도움이 된다.<br />
                                    <br />
                                    고사리, 도라지, 밤, 호두, 은행, 무, 마, 콩나물 등도 좋다.<br />
                                    <br />
                                    - 추천 음식 : 쇠고기, 콩, 고구마, 율무, 미역, 다시마, 김 등 호흡기를 튼튼하게 해주는 음식<br /> - 추천 과일 : 살구, 자두, 배, 복숭아 등</td>
                            </tr>
                            <tr>
                                <td class="auto-style36" style="border-right-style: solid; border-color: #AF7549">운동</td>
                                <td>지구력이 부족한 타입으로 처음부터 무리하게 운동을 하는 것보다, 가볍게 길게 할 수 있는 운동을 찾는 것이 좋다. 대개 전신비만이 많으므로 땀을 내는 유산소운동이 많이 필요하다.<br /> 조깅, 등산, 수영, 탁구, 축구, 농구 등 활동을 많이 하는 운동이나 칼로리를 많이 발생시킬 수 있는 운동이 좋다.</td>
                            </tr>
                            <tr>
                                <td class="auto-style36" style="border-right-style: solid; border-color: #6A472D">다이어트 음식</td>
                                <td>고기를 많이 먹지 말고 단백질로 식단을 짜면 다이어트에 도움이 된다.<br />
                                    <br />
                                    다이어트 추천 음식으로 콩, 우유, 고구마, 매실 등이 좋다.</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <br />
    <br />
</asp:Content>

