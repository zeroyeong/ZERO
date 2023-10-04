<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀관리(수정)</title>
    <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/editorTeam.css?s1" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css?123" />" />
    <!-- js 연결 -->
   <script src="<c:url value="/resources/js/zCup.js?ad" />" defer></script>

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
   
   <!-- 아이콘 -->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>

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
        <h1>
          ${team_detail_list[0].cup_team.team_name} 관리
        </h1>

		<form:form id="teamForm" modelAttribute = "editTeam" method="post" action="cupTeamEdit" enctype="multipart/form-data">
		<form:input type="hidden" path="team_no" value="${team_detail_list[0].cup_team.team_no}"/>         
          <div class="teamImage">
            <!--팀 사진-->
            <input type="checkbox" id="teamImage" class="checkBotInput">
            <div class="origin image">
              <img src="${pageContext.request.contextPath}/resources/images/team1.PNG" alt="" /> 
              <label class="modify" for="teamImage">변경</label>
            </div>
			      
              <div class="new">
                <img src="../images/아산인풋살장.jpg" alt="" id="newTeamImage">
                <div class="search">
                  <input type="file" id="fileInput" onchange="readImage(this)">
                  <label for="fileInput" class="modify">찾아보기</label>
                </div>
              </div>
          </div>
          <table class="teamDetail">
            <tr>
              <th>팀 명</th>
              <td>
                <input type="checkbox" id="teamName" class="checkBotInput">
                <div class="origin branch">
                  <span>${team_detail_list[0].cup_team.team_name}</span>
                  <label class="modify" for="teamName">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>
                <div class="new">
                  <form:input type="text" path="team_name" />
                </div>
              </td>
            </tr>
            <tr>
              <th>팀 코드</th>
              <td>${team_detail_list[0].cup_team.team_code}</td>
            </tr>
            <tr>
              <th>지점</th>
              <td>
                <input type="checkbox" id="branch" class="checkBotInput">
                <div class="origin branch">
                  <span>${team_detail_list[0].cup_team.branch.branch_name}</span>
                  <label class="modify" for="branch">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                   <form:select path="branch_no">
                    <c:forEach var="branch" items="${branch_List}">
                      <form:option value="${branch.branch_no}">${branch.branch_name}</form:option>
					</c:forEach>
                   </form:select>
                </div>
              </td>
            </tr>
            <tr>
              <th>팀관리자</th>
              <td>
                <input type="checkbox" id="director" class="checkBotInput">
                <div class="origin director">
                  <span>${team_detail_list[0].cup_team.team_leader}</span>
                  <label class="modify" for="director">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                   <form:select path="team_leader">
                    <c:forEach var="team_detail_list" items="${team_detail_list}">
                      <form:option value="${team_detail_list.player_name}">${team_detail_list.player_name}</form:option>
					</c:forEach>
                   </form:select>
                </div>
              </td>
            </tr>
            <tr>
              <th>팀 유니폼</th>
              <td>
                <input type="checkbox" id="uniform" class="checkBotInput">
                <div class="origin uniform">
                  <span>홈: ${team_detail_list[0].cup_team.team_uniform_home} / 
                  원정: ${team_detail_list[0].cup_team.team_uniform_away}</span>
                  <label class="modify" for="uniform">변경</label>
                </div>
                <div class="new uniform">
                  <label>홈: </label>
                  <form:input type="text" path="team_uniform_home" />
                  /
                  <label>원정: </label>
                  <form:input type="text" path="team_uniform_away" />
                </div>
              </td>
            </tr>
          </table>
     	</form:form>
          <table class="playerList">
            <caption>
              <span></span>
              선수명단
            </caption>
            
            <thead>
              <tr>
                <th>No.</th>
                <th>이름</th>
                <th>출전</th>
                <th>득점</th>
                <th>경고</th>
                <th>퇴장</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
          	<form:form id="playerForm" method="post" action="playerDelete">
              <c:forEach var= "player" items="${team_detail_list}">
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <span class="playerImage">
                      <!--선수 사진-->
                      <img src="../resources/images/${player.player_photo}" alt="" />
                    </span>
                    <span>${player.player_name}</span>
                  </div>
                </td>     
                <td class="score">0</td>
                <td class="score">0</td>
                <td class="score">0</td>
                <td class="score">0</td>
                <td>
                  <button type="button" class="playerOut" onclick="deletePlayer(${player.player_no}, ${team_detail_list[0].cup_team.team_no})">퇴출</button>
                </td>
              </tr>
              </c:forEach>
            </form:form>              
            </tbody>
          </table>
          <div class="btnBox">
            <button type="button" class="modify submitBtn" onclick="teamEdit()">수정완료</button>
          </div>
   
      </div>
    </main>
    
    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
