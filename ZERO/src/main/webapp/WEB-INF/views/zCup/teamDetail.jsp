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
      <!-- subMenu include -->
 	  <jsp:include page="../include/zCupScheduleList.jsp" />
 	  
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
            <th>팀관리자</th>
            <td>${team_detail_list[0].cup_team.team_leader}</td>
          </tr>
          <tr>
            <th>팀유니폼</th>
            <td>
              ${team_detail_list[0].cup_team.team_uniform_home} / ${team_detail_list[0].cup_team.team_uniform_away}
            </td>
          </tr>
        </table>

        <ul class="teamBtn">
          <li><label for="shcedule" class="shcedule active">팀일정</label></li>
          <li><label for="player" class="player">선수명단</label></li>
        </ul>
        <input type="radio" name="team" id="shcedule" checked />
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
