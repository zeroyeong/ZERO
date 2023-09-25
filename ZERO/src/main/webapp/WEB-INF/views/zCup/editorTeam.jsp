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
   <link rel="stylesheet" href="<c:url value="/resources/css/common.css?aa1" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/editorTeam.css?123" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css?123" />" />
    <!-- js 연결 -->
   <script src="<c:url value="/resources/js/zCup.js" />" defer></script>
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
        <h1>
          팀 관리 1
        </h1>

        <form class="team">
          <div class="teamImage">
            <!--팀 사진-->
            <img src="../images/팀2.jpg" alt="" />
            <label class="modify">변경</label>
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
                  <input type="text">
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
                  <span>~~~점</span>
                  <label class="modify" for="branch">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                  <select name="" id="">
                    <option value="">~~1점</option>
                    <option value="">~~2점</option>
                  </select>
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
                  <select name="" id="">
                    <!--선수명단 중에서 선택할 수 있도록-->
                    <option value="">김길동</option>
                    <option value="">이길동</option>
                  </select>
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
                  <input type="text" />
                  /
                  <label>원정: </label>
                  <input type="text" />
                </div>
              </td>
            </tr>
          </table>

          <table class="playerList">
            <caption>
              <span></span>
              선수명단
            </caption>
            
            <thead>
              <tr>
                <th>No.</th>
                <th>이름</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var= "player" items="${team_detail_list}">
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <span class="playerImage">
                      <!--선수 사진-->
                      <img src="../images/person.png" alt="">
                    </span>
                    <span>${player.player_name}</span>
                  </div>
                </td>
                <td>
                  <button type="button" class="playerOut">퇴출</button>
                </td>
              </tr>
              </c:forEach>
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <span class="playerImage">
                      <!--선수 사진-->
                      <img src="../images/person.png" alt="">
                    </span>
                    <span>홍길동</span>
                  </div> 
                </td>
                <td>
                  <button type="button" class="playerOut">퇴출</button>
                </td>
              </tr>
            </tbody>
          </table>
          <div class="btnBox">
            <button type="button" class="modify submitBtn">수정완료</button>
          </div>
        </form>
      </div>
    </main>
    
    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
