<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko"> 
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀 디테일</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/teamDetail.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css" />" />

    <!-- js 연결 -->
    <script src="<c:url value="/resources/js/common.js" />" defer></script>
    <script src="<c:url value="/resources/js/detail.js" />" defer></script>
    <script src="<c:url value="/resources/js/tournament.js" />" defer></script>

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>

    <!-- googleFont -->
  </head>
  <body>
    <!-- header include -->
  	<jsp:include page="../include/header.jsp" />
  	
  	<main>
      <div class="topVideo"> 
        <h2>Z-CUP</h2>
        <video id="video2" autoplay playsinline loop muted>
          <source src="../videos/point.mp4" type="video/mp4" />
        </video>
      </div>
      <article class="tournament">
        <input type="checkbox" name="" id="checkBox" />
        <label for="checkBox">
          <span>Z-CUP Schedule List</span>
          <span>
            <i class="fa-solid fa-chevron-down"></i>
          </span>
        </label>
        <section class="matchNranking">
          <div class="match">
            <div class="title">
              <h1>z-cup tournament</h1>
              <button type="button" onclick="showDetail()">상세보기</button>
            </div>

            <div class="tournament">
              <h1 class="logo">zero futsal</h1>
              <ul class="round3">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="round2">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="round1">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="teamList">
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 1</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 2</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 3</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 4</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 5</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 6</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 7</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 8</span>
                </li>
              </ul>
            </div>
          </div>
          <div class="ranking">
            <div class="title">
              <h1>player ranking</h1>
              <button type="button" onclick="showDetail()">상세보기</button>
            </div>
            <table>
              <colgroup>
                <col class="col1" />
                <col class="col2" />
                <col class="col3" />
                <col class="col4" />
                <col class="col5" />
                <col class="col6" />
                <col class="col7" />
              </colgroup>
              <thead>
                <tr>
                  <th>순위</th>
                  <th>이름</th>
                  <th>소속팀</th>
                  <th>출전</th>
                  <th>득점</th>
                  <th>경고</th>
                  <th>퇴장</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><span class="rank">1</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">2</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">3</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
              </tbody>
            </table>
          </div>
        </section>
      </article>

      <div class="container">
        <h1>${team_detail_list[0].cup_team.team_name}</h1>

        <table class="detail">
          <caption>
            <span></span>
            팀 상세정보
          </caption>

          <tr>
            <td rowspan="4" class="teamImg">
              <img src="../images/팀2.jpg" alt="" />
            </td>
            <th>지점</th>
            <td>시흥점</td>
          </tr>
          <tr>
            <th>팀분류</th>
            <td></td>
          </tr>
          <tr>
            <th>팀관리자</th>
            <td>${team_detail_list[0].cup_team.team_leader}</td>
          </tr>
          <tr>
            <th>팀유니폼</th>
            <td>${team_detail_list[0].cup_team.team_uniform_home} / ${team_detail_list[0].cup_team.team_uniform_away}</td>
          </tr>
        </table>

        <ul class="teamBtn">
          <li><label for="shcedule" class="shcedule active">팀일정</label></li>
          <li><label for="ranking" class="ranking">팀순위</label></li>
          <li><label for="player" class="player">선수명단</label></li>
        </ul>
        <input type="radio" name="team" id="shcedule" checked />
        <input type="radio" name="team" id="ranking" />
        <input type="radio" name="team" id="player" />

        <section class="shcedule">
          <div>
            <ul>
              <li class="playName">컵 이름</li>
              <li class="playInfo">
                <div>
                  <span>12.12(토)</span>
                  21:30
                </div>
                <span class="place">C구장</span>
              </li>
              <li class="team leftTeam">
                <img src="../images/팀1.jpg" alt="" />
                <span class="teamName">팀 1 이름</span>
              </li>
              <li class="score">1:2</li>
              <li class="team rightTeam">
                <span class="teamName">팀 1 이름</span>
                <img src="../images/팀1.jpg" alt="" />
              </li>
              <li class="button">
                <label for="play1">경기정보 <span></span></label>
              </li>
            </ul>
          </div>

          <input type="checkbox" name="" id="play1" />
          <label for="play1" class="cover"></label>
          <section class="play1 playInfo">
            <label for="play1" class="closeBtn">×</label>
            <table>
              <caption>
                <span></span>
                기본정보
              </caption>
              <tr>
                <th>지점</th>
                <td>시흥점</td>
              </tr>
              <tr>
                <th>컵 명</th>
                <td>그날 리그 그 그날리그</td>
              </tr>
              <tr>
                <th>경기일자</th>
                <td>2021.04.25(월) 21:30 C구장</td>
              </tr>
            </table>

            <table class="record">
              <caption>
                <span></span>
                경기기록
              </caption>
              <tr>
                <th>팀 스피드러너(1)</th>
                <th>팀명</th>
                <th>team 동그라미(2)</th>
              </tr>
              <tr>
                <td>백태양 (1쿼터/5')</td>
                <th>득점현황</th>
                <td>
                  장승연 (1쿼터/6')
                  <br />
                  주영웅 (2쿼터/6')
                </td>
              </tr>
              <tr>
                <td>0</td>
                <th>경고</th>
                <td>0</td>
              </tr>
              <tr>
                <td>0</td>
                <th>퇴장</th>
                <td>0</td>
              </tr>
            </table>
          </section>
        </section>

        <section class="ranking">
          <table class="playerRanking">
            <colgroup>
              <col class="col1" />
              <col class="col2" />
              <col class="col3" />
              <col class="col4" />
              <col class="col5" />
              <col class="col6" />
              <col class="col7" />
              <col class="col8" />
              <col class="col9" />
            </colgroup>
            <thead>
              <tr>
                <th>순위</th>
                <th>리그</th>
                <th>승점</th>
                <th>승</th>
                <th>무</th>
                <th>패</th>
                <th>득</th>
                <th>실</th>
                <th>골득실</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><span>1</span></td>
                <td>그날 리그~~</td>
                <td>10</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>2</td>
              </tr>
              <tr>
                <td><span>1</span></td>
                <td>그날 리그~~</td>
                <td>10</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>3</td>
                <td>2</td>
              </tr>
            </tbody>
          </table>
        </section>

        <section class="player">
          <table class="player">
            <colgroup>
              <col class="col1" />
              <col class="col2" />
              <col class="col3" />
              <col class="col4" />
              <col class="col5" />
              <col class="col6" />
            </colgroup>
            <thead>
              <tr>
	            <th>번호</th>
	            <th>이름</th>
	            <th>출전</th>
	            <th>득점</th>
	            <th>경고</th>
	            <th>퇴장</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${team_detail_list}" var="playerlist">
              <tr>
                <td>${playerlist.player_no}</td>
                <td>
                  <div class="player">
                    <img src="../images/person.png" alt="" />
                    <span>${playerlist.player_name}</span>
                  </div>
                </td>
                <td>${playerlist.player_name}</td>
                <td>${playerlist.player_name}</td>
                <td>${playerlist.player_name}</td>
                <td>${playerlist.player_name}</td>
              </tr>
              </c:forEach>
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <img src="../images/person.png" alt="" />
                    <span>이름1</span>
                  </div>
                </td>
                <td>10</td>
                <td>5</td>
                <td>0</td>
                <td>0</td>
              </tr>
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <img src="../images/person.png" alt="" />
                    <span>이름1</span>
                  </div>
                </td>
                <td>10</td>
                <td>5</td>
                <td>0</td>
                <td>0</td>
              </tr>
            </tbody>
          </table>
        </section>
      </div>
    </main>
  	
  	<!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
