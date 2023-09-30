<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko"> 
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀 세팅</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/teamSetting.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css?123" />" />
    
    <!-- js 연결 -->
	<script src="<c:url value="/resources/js/zCup.js?ddfdg" />" defer></script>
	
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous" ></script>
  </head>
  <body>
  	<!-- header include -->
  	<jsp:include page="../include/header.jsp" />
  	
  	<input type="hidden" id = "team_password" value = "${team.team_password}"/>
  	
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
        <h1 class="pageTitle">팀관리</h1>

        <div class="settingBox">
          <p><i class="fa-solid fa-location-dot"></i>팀관리에 앞서 정보를 입력해 주세요.</p>
          <div class="settingFrom">
            <form action="#">
              <label>비밀번호</label>
              <input type="password" id="password" name="" />
            </form>
            <div class="btns">
              <button type="button" class="accept" onclick="teamEditPassword(${team.team_no})">인증하기</button>
              <a href="">취소하기</a>
            </div>
          </div>
        </div>
      </div>
    </main>
  	
  	<!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
