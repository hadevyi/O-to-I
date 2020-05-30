# O_to_I
## 프로젝트명 : 컴퓨터공학부 학부사이트 개발

- 개발환경 : Visual Studio 2015
- 사용기술 : C#, ASP.NET, mySQL, pubs Database

- 개발 인원 : 4명
- 프로젝트 기간 :  2016.10.26 - 2016.12.06 (총 42일;약 2달 2주)

---

### <프로젝트 개발>

최근 '건강'이라는 주제가 각광받는 만큼, 다이어트를 실패하는 사람이 많다. 여기서 다이어트는 단순히 수치 상 몸무게를 줄이는 것이 아닌 건강하기 위한 체력 단련으로 정의하였으며, 자신의 체질에 맞는 운동법과 식단 등으로 성공적으로 진행 할 수 있도록 설계하였다.

또한 체지방(BMI) 지수 책정 및 접속자의 식단의 칼로리를 자동으로 계산하는 기능까지 추가하였다. 

---

### <프로젝트 소개>

C#을 활용한 ASP 프로젝트로, 설계한 내용을 실제 구현하며 ASP.NET과 Database을 효과적으로 사용하기 위한 프로젝트이다. 건강이라는 주제로 설계한 프로젝트이다.

- **담당 업무** : 프로젝트 팀장, C# [ASP.NET](http://asp.NET) Master Page 제작 및 Database 설계, 회원용 페이지 세부(User 따른 차별화된 내용 제공) 구축

- 시스템 구성

<img src = "https://user-images.githubusercontent.com/45550607/83281560-3a097c80-a213-11ea-9a9e-477c6ff38efd.png" width="40%">

**[About O to I]** : 회원/비회원/관리자와 무관하게 열람 가능

**[Diet]**

- '식이요법', '운동방법' : 회원/비회원의 접근 권환이 달라 열람 정보가 다름

- '비만도 측정' : 회원(기존 데이터 자동 입력)과 비회원(직접 입력)의 사용 형태가 다름

- '(회원용)Diet' : 회원은 섭취한 음식에 대한 칼로리를 자동 연산 가능, 비회원은 접근 불가

**[Community]** : 비회원 불가능

- '방명록' : 짧은 글 업데이트 가능

- '자유게시판' : 제목, 내용이 있는 긴 글을 업데이트 가능

**[Customer Service]** : 비회원 불가능

- 회원 : 게시글 작성 가능, 답변 작성 불가능

- 관리자 : 게시글 및 답변 작성 가능

- 데이터베이스(DB) 구성 : 각 게시판에 사용될 기준으로 Table을 설계함

![database](https://user-images.githubusercontent.com/45550607/83281551-383fb900-a213-11ea-884d-ce49a098a572.png)

- 회원가입 시 user_db에 자동 등록

- 게시글 작성 시 Community, Custom에 자동 등록

- 칼로리 계산 시 Food_db에서 호출, 사용

![database_code](https://user-images.githubusercontent.com/45550607/83281552-383fb900-a213-11ea-8c49-b459fce0392f.png)

---

### <프로젝트 실행 화면>

- 첫 화면(비회원)

![first](https://user-images.githubusercontent.com/45550607/83281556-3970e600-a213-11ea-8044-1093c047994d.png)

- 첫 화면(회원)

![first_user](https://user-images.githubusercontent.com/45550607/83281559-3970e600-a213-11ea-96b3-2fb804b8c475.png)

- 회원용 접속 화면 (회원용 Diet)

![user_diet](https://user-images.githubusercontent.com/45550607/83281564-3aa21300-a213-11ea-840c-d9b7a64034c8.png)

- 관리자 계정

![admin](https://user-images.githubusercontent.com/45550607/83281547-370e8c00-a213-11ea-9fe4-c7c4406c69e3.png)
