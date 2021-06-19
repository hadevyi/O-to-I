![image](https://user-images.githubusercontent.com/45550607/122635141-2a5e1e00-d11d-11eb-82c1-419bdcccd90c.png)


<div align="right">

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) <a href="https://hits.seeyoufarm.com"/><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https://github.com/eona1301/O_to_I"/></a>

</div>
<br>

## ASP.NET과 MySQL을 활용한 건강관리 웹 사이트 🏃🏻‍♂️🏃🏻‍♀️ 
> '건강'이라는 주제가 각광받으면서 다이어트에 실패하는 사람이 많습니다. 여기서 다이어트는 단순히 숫자상 체중감소가 아닌, 건강을 위해 개인별 체질에 알맞는 운동법과 식이요법으로 성공적인 다이어트를 위해 설계되었습니다.<br>
> 체지방지수(BMI)를 설정하고 유저마다의 식단 칼로리를 자동으로 계산하는 기능도 추가되었습니다.

- 개발스택 : C#, ASP.NET, mySQL, pubs Database
- 개발인원 : 4인
- 개발환경 : Visual Studio 2015
- 개발기간 : 2016.10.26 - 2016.12.06 (총 42일)
<br>
<br>

### 1️⃣ 개요

ASP 프로젝트로, "건강관리"라는 주제에 맞추어 디자인부터 사이트 구현까지 팀 내에서 구현하였습니다. 원하는 기능에 따른 DataBase 설계까지 진행했습니다.

+ **내 역할**
  + 프로젝트 팀장
  + 마스터페이지 구현
  + 웹 디자인 및 DataBase 설계
  + 사용자의 BMI 수치에 따라 차별화된 콘텐츠 제공

<br>

### 2️⃣ 프로젝트 구성

<div align="center"><img src = "https://user-images.githubusercontent.com/45550607/83281560-3a097c80-a213-11ea-9a9e-477c6ff38efd.png" width="40%"></div>

<table style="width:100%;text-align:center;">
  <tr style="text-align:center;">
    <th>대분류</th>
    <th>카테고리</th>
    <th>접근성</th>
    <th>세부사항</th>
  </tr>
  <tr>
    <td>About O to I</td>
    <td></td>
    <td>누구나</td>
    <td></td>
  </tr>
  <tr>
    <td>Diet</td>
    <td>식이요법</td>
    <td>누구나</td>
    <td>회원/비회원 차별 데이터</td>
  </tr>
  <tr>
    <td></td>
    <td>운동방법</td>
    <td>누구나</td>
    <td>회원/비회원 차별 데이터</td>
  </tr>
  <tr>
    <td></td>
    <td>비만도 측정</td>
    <td>누구나</td>
    <td>회원/비회원 차별 데이터</td>
  </tr>
  <tr>
    <td></td>
    <td>(회원용)Diet</td>
    <td>회원</td>
    <td>메뉴 자동 칼로리 계산, 신규 메뉴-칼로리 등록 가능</td>
  </tr>
  <tr>
    <td>Community</td>
    <td>방명록</td>
    <td>회원</td>
    <td>짧은 글 등록 가능</td>
  </tr>
  <tr>
    <td></td>
    <td>자유게시판</td>
    <td>회원</td>
    <td>제목과 본문을 갖는 긴 글 등록 가능</td>
  </tr>
  <tr>
    <td>Customer Service</td>
    <td></td>
    <td>회원</td>
    <td>관리자에게 건의 글 작성</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>관리자</td>
    <td>건의글에 대한 답변 작성 가능</td>
  </tr>
</table>

<br>

### 3️⃣ Database 구성

: 각 게시판에서 사용할 기준에 따라 Table 설계

<div align="center">

![database](https://user-images.githubusercontent.com/45550607/83281551-383fb900-a213-11ea-884d-ce49a098a572.png)

</div>

- 회원 가입시 user_db로 자동 등록
- 게시물 작성시 Community 및 Custom에 자동 등록
- 칼로리 계산시 Food_db에서 호출 및 사용

<div align="center">

![database_code](https://user-images.githubusercontent.com/45550607/83281552-383fb900-a213-11ea-8c49-b459fce0392f.png)

</div>

<br>

### 4️⃣ 프로젝트 화면

- 비회원 첫화면

<div align="center">

![first](https://user-images.githubusercontent.com/45550607/83281556-3970e600-a213-11ea-8044-1093c047994d.png)

</div>

- 회원 첫화면

<div align="center">

![first_user](https://user-images.githubusercontent.com/45550607/83281559-3970e600-a213-11ea-96b3-2fb804b8c475.png)

</div>

- 회원용 Diet (회원만 접근 가능)

<div align="center">

![user_diet](https://user-images.githubusercontent.com/45550607/83281564-3aa21300-a213-11ea-840c-d9b7a64034c8.png)

</div>

- 관리자 계정 시 회원 리스트


<div align="center">

![admin](https://user-images.githubusercontent.com/45550607/83281547-370e8c00-a213-11ea-9fe4-c7c4406c69e3.png)

</div>
