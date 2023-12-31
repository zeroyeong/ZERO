<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>스케줄 디테일</title>

     <!-- css 연결 -->
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/scheduleDetail.css?addd" />" />
    <!--  <link rel="stylesheet" href="<c:url value="/resources/css/zCup.css" />" /> -->

    <!-- js 연결 -->
    <script src="<c:url value="/resources/js/zCupURL.js?d" />" defer></script>
    <script src="<c:url value="/resources/js/detail.js?adss" />" defer></script>

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>
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
      <input type="radio" name="scheduleDetail" id="teamList" checked />
      <input type="radio" name="scheduleDetail" id="playschedule" />
      <ul class="harlfButton">
        <li><label for="teamList">출전 팀</label></li>
        <li><label for="playschedule">경기 일정</label></li>
      </ul>
      <div class="container">
        <section class="teamList">
          <h3 class="tournamentTitle">
            <span></span>
            경기 대진표
          </h3>
          <div class="tournament">
            <h1 class="logo">zero futsal</h1>
            <ul class="round3">
              <li>
                <ul>
                  <li class="active"></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="round2">
              <li>
                <ul>
                  <li class="active"></li>
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
                  <li class="active"></li>
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
              <c:forEach var="cupTeamList" items="${cupTeamList}" varStatus="cnt" begin="0" end="7">   
              	<c:set var="groupCnt" value="${groupCnt + 1}" />
              <li>
				<img src="${pageContext.request.contextPath}/resources/images/${cupTeamList.team_emblem}" alt=""/>
                <a href="">${cupTeamList.team_name}</a>
              </li>
              </c:forEach>     
            </ul>
          </div>
        
          <h3>
            <span></span>
         	 출전 팀 List
          </h3>
          <table class="teamList">
            <colgroup>
              <col class="col1" />
              <col class="col2" />
              <col class="col3" />
              <col class="col4" />
            </colgroup>

            <thead>
              <tr>
       			<th>지점명</th>
                <th>팀명</th>
                <th>등록선수</th>
                <th>상세정보</th>
              </tr>
            </thead>
            <tbody>             
              <c:forEach items="${cupTeamList}" var="cupTeam"> 
	              <tr>
	                <td>${cupTeam.branch.branch_name}</td>
	                <td>
	                  <div class="teamName">
 					  <img src="${pageContext.request.contextPath}/resources/images/${cupTeam.team_emblem}" alt="" />    
	                    <span class="teamName">${cupTeam.team_name}</span>
	                  </div>
	                </td>
	                <td>${cupTeam.team_member_cnt} 명</td>
	                <td>
	                  <button type="button" class="detailBtn" onclick="teamDetail(${cupTeam.team_no})">상세정보</button>
	                </td>
	              </tr>
              </c:forEach>      
            </tbody>
          </table>
        </section>

        <section class="playschedule">
          <h3><span>z-cup</span> Schedule</h3>
          <div class="scheduleBox">
            <section class="zCupSchedule">
              <div class="zCup">
            <c:forEach items="${cupScheduleList}" var="cupSchedule">
            <c:set var="listNum" value="${listNum + 1}" />
                <ul>
                  <li class="place">${cupSchedule.branch.branch_name}</li>
                  <li class="playInfo">
                    <div>
                    <span>${cupSchedule.schedule_date}</span>
                    <span>${cupSchedule.schedule_time}</span>
                    </div>
                    <span>${cupSchedule.schedule_location}</span>
                  </li>
                  <li class="team leftTeam">
                    <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_home_team.team_no}" />">
                    	${cupSchedule.cup_home_team.team_name}
                    </a>
                    <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_home_team.team_no}" />">
					<img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_home_team.team_emblem}" alt="" />    
                    </a>
                  </li>
                  <li class="score">${cupSchedule.schedule_home_goal} : ${cupSchedule.schedule_away_goal}</li>
                  <li class="team rightTeam">
                    <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_away_team.team_no}" />">
					<img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_away_team.team_emblem}" alt="" /> 
                    </a>
                     <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_away_team.team_no}" />">
                 		${cupSchedule.cup_away_team.team_name}
                 	 </a>
                  </li>
                  <li class="button">
                    <label for="play${listNum}" class="playButton" onClick="showPlayInfo(this);">
                    	경기정보
                    	<span></span>
                    </label>  
                  </li>
                </ul>
                <input type="checkbox" name="" id="play${listNum}" />
                <!-- label cover 클래스 옆에 play1 추가해주세용 -->
                <label for="play${listNum}" class="cover play${listNum}"></label>
                <section class="playInfo play${listNum}">
                  <label for="play${listNum}" class="closeBtn">×</label>
                  <table>
                    <caption>
                      <span></span>
                      기본정보
                    </caption>
                    <tr>
                      <th>지점</th>
                    <td>${cupSchedule.branch.branch_name}</td>
                    </tr>
                    <tr>
                      <th>경기일자</th>
                      <td>${cupSchedule.schedule_date} ${cupSchedule.schedule_time} ${cupSchedule.schedule_location}</td>
                  	</tr>
                  </table>

                  <table>
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
                      <td>${cupSchedule.detail.detail_away_goal}</td>
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
          </div>
        </section>
      </div>
    </main>
  	<!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
