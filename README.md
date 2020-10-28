# O_to_I

## Health management site development

<br>
<div align="right">

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) <a href="https://hits.seeyoufarm.com"/><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https://github.com/eona1301/O_to_I"/></a>

</div>

- Usage: C#, ASP.NET, mySQL, pubs Database
- Development personnel: 4 person
- Development environment: Visual Studio 2015
- Project period: 2016.10.26 - 2016.12.06 (42 days in total; about 2 months 2 weeks)

<br>

## Motive

As the theme of "health" has recently come into the spotlight, many people fail to lose weight. Here, dieting was defined as physical training for health rather than simply weight loss in numbers, and was designed to successfully proceed with exercise methods and diet suitable for one's physical constitution.

It also added the ability to set body fat (BMI) indices and automatically calculate the calories of the subscriber's diet.

<br>

## Introduce

As an ASP project using C#, it is a project to actually implement the designed contents and to use ASP.NET and Database effectively. It is a project designed with the theme of health.

- **My Job** : Project team leader, C# ASP.NET Master Page production and database design, detailed page for members (providing differentiated contents for each user) construction

<br>

## System configuration

<img src = "https://user-images.githubusercontent.com/45550607/83281560-3a097c80-a213-11ea-9a9e-477c6ff38efd.png" width="40%">

|     Section      |           Bulletin Board            | Authority |                      Detail                       |
| :--------------: | :---------------------------------: | :-------: | :-----------------------------------------------: |
|   About O to I   |                                     | Everyone  |                                                   |
|       Diet       |          '식이요법'(diet)           | Everyone  |  Members, non-members have different information  |
|                  |        '운동방법' (exercise)        | Everyone  |  Members, non-members have different information  |
|                  | '비만도 측정'<br>(obesity measure)  | Everyone  |  Members, non-members have different information  |
|                  | '(회원용)Diet'<br>(diet for member) |  Member   | Automatically calculate calories for food you eat |
|    Community     |       '방명록'<br>guest book        |  Member   |            Short text update available            |
|                  |      '자유게시판'<br>Free-Post      |  Member   |      Update long text with title and content      |
| Customer Service |                                     |  Member   |                Can write postings                 |
|                  |                                     |  Manager  |          Can write postings and answers           |

<br>

## Database Configuration

: Design a table based on the standard to be used in each bulletin board

![database](https://user-images.githubusercontent.com/45550607/83281551-383fb900-a213-11ea-884d-ce49a098a572.png)

- Automatically register with user_db when signing up as a member
- Automatically register with Community and Custom when creating a post
- Called and used by Food_db when calculating calories

![database_code](https://user-images.githubusercontent.com/45550607/83281552-383fb900-a213-11ea-8c49-b459fce0392f.png)

<br>

## Project screen

- First screen (Non-Members)

![first](https://user-images.githubusercontent.com/45550607/83281556-3970e600-a213-11ea-8044-1093c047994d.png)

- First screen (Members)

![first_user](https://user-images.githubusercontent.com/45550607/83281559-3970e600-a213-11ea-96b3-2fb804b8c475.png)

- Access screen for members (Diet for members)

![user_diet](https://user-images.githubusercontent.com/45550607/83281564-3aa21300-a213-11ea-840c-d9b7a64034c8.png)

- Administrator account

![admin](https://user-images.githubusercontent.com/45550607/83281547-370e8c00-a213-11ea-9fe4-c7c4406c69e3.png)
