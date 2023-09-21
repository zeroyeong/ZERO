<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko"> 
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀 세팅</title>

     <!-- css 연결 -->
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/teamSetting.css" />

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous" ></script>
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

      <div class="container">
        <h1 class="pageTitle">팀관리</h1>

        <div class="settingBox">
          <p>
            <i class="fa-solid fa-location-dot"></i>팀관리에 앞서 정보를 입력해
            주세요.
          </p>
          <div class="settingFrom">
            <form action="#">
              <label>비밀번호</label>
              <input type="password" name="" />
            </form>
            <div class="btns">
              <a href="" class="accept">인증하기</a>
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
