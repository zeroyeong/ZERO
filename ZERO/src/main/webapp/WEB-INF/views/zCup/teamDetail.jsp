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
    <link rel="stylesheet" href="<c:url value="/resources/css/teamDetail.css?sd" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css" />" />

    <!-- js 연결 -->

    <script src="<c:url value="/resources/js/detail.js?ass" />" defer></script>

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
          <source src="../resources/videos/point.mp4" type="video/mp4" />
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
 			<img src="${pageContext.request.contextPath}/resources/images/${team_detail_list[0].cup_team.team_emblem}" alt="" />     
            </td>
            <th>지점</th>
            <td>${team_detail_list[0].cup_team.branch.branch_name}</td>
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
            <c:forEach var="cupSchedule" items="${cup_schedule_list}">
            <c:set var="listNum" value="${listNum + 1}" />
            <ul>
              <li class="playName">컵 이름</li>
              <li class="playInfo">
                <div>
                  <span>${cupSchedule.schedule_date}</span>
                  <span>${cupSchedule.schedule_time}</span>
                </div>
                <span class="place">C구장</span>
              </li>
              <li class="team leftTeam">
                <span class="teamName">${cupSchedule.cup_home_team.team_name}</span>
                <img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_home_team.team_emblem}" alt="" />
                </li>
              <li class="score">${cupSchedule.schedule_home_goal} : ${cupSchedule.schedule_away_goal}</li>
              <li class="team rightTeam">
 				<img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_away_team.team_emblem}" alt="" />
                <span class="teamName">${cupSchedule.cup_away_team.team_name}</span>
              </li>
              <li class="button">
                <label for="play${listNum}" class="playButton" onclick="showPlayInfo(this)"
                >경기정보 <span></span></label>
              </li>
            </ul>    
          <input type="checkbox" name="" id="play${listNum}" />
          <label for="play${listNum}" class="cover play${listNum}"></label>
          <section class="play${listNum} playInfo">
            <label for="play${listNum}" class="closeBtn">×</label>
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
                <th>${cupSchedule.cup_home_team.team_name}</th>
                <th>팀명</th>
                <th>${cupSchedule.cup_away_team.team_name}</th>
              </tr>
              <tr>
                <td>${cupSchedule.detail.detail_home_goal}</td>
                <th>득점현황</th>
                <td>
                   ${cupSchedule.detail.detail_away_goal}
                  <br />
                  주영웅 (2쿼터/6')
                </td>
              </tr>
              <tr>
                <td>${cupSchedule.detail.detail_home_yellow_card}</td>
                <th>경고</th>
                <td>${cupSchedule.detail.detail_away_yellow_card}</td>
              </tr>
              <tr>
                <td>${cupSchedule.detail.detail_home_red_card}</td>
                <th>퇴장</th>
                <td>${cupSchedule.detail.detail_away_red_card}</td>
              </tr>
            </table>
          </section>
          </c:forEach>
          </div>
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
              <c:set var="num" value="${num + 1}" />
                <tr>
                  <td>${num}</td>
                  <td>
                    <div class="player">
  					  <img src="${pageContext.request.contextPath}/resources/images/${playerlist.player_photo}" alt="" />
                      <span>${playerlist.player_name}</span>
                    </div>
                  </td>
                  <td>${playerlist.player_games}</td>
                  <td>${playerlist.player_goal}</td>
                  <td>${playerlist.player_yellow_card}</td>
                  <td>${playerlist.player_red_card}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </section>
      </div>
    </main>
  	  	
  	<!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
