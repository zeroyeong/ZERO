<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<!-- naver 소셜로그인 --> 
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>ZEROFUTSAL</title>
   <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/login.css?ver2" />" />
   
   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/member.js?b" />" defer></script>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
   
   <!-- 네이버 로그인 -->
   <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
   
   <!-- 구글 로그인 -->
   <meta name ="google-signin-client_id" content="330363450460-a3bqtl9hpsrjn282co74ilv1avtjj3up.apps.googleusercontent.com">
	
   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
</head> 
 <body>
    <section class="container">
      <h1 class="logo" onclick="document.location.href='/zero';">zero futsal</h1>
      <form name="loginFrm" method="post" action="login" onsubmit="return frm_check();">
        <dl>
        <c:if test="${login_result == 'fail'}">
		 <dd style="color:red; text-align:center;"> 아이디 또는 비밀번호가 일치하지 않습니다.
		 </dd>
		</c:if>
          <dt>
            <label for="userId">아이디</label>
          </dt>
          <dd>
            <input type="email" name="mem_id" id="userId" placeholder="이메일" required />
          </dd>
          <dt>
            <label for="userPw">비밀번호</label>
          </dt>
          <dd>
            <input type="password" name="mem_pw" id="userPw" placeholder="비밀번호" required />
          </dd>
        </dl>

        <label for="saveId" class="remId">
          <input type="checkbox" name="checkId" id="saveId" />
          <span class="icon"></span>
          아이디 저장
        </label>
        <button type="submit">로그인</button>
      </form>

      <ul class="acBtn">
        <li><label for="findId" onclick="findId()">아이디 찾기</label></li>
        <li><label for="findPw" onclick="findPw()">비밀번호 찾기</label></li>
        <li><a href="<c:url value="/join_agree"/>">회원가입</a></li>
      </ul>

      <div class="snsLogin">
        <p>SNS 간편로그인</p>
        <button type="button" class="google" onClick="location.href='${google_url}'">
          <span>
            <img src="<c:url value="/resources/images/google.png" />" alt="" />
          </span>
          구글 계정으로 로그인
        </button>
        
        <button type="button" class="naver" onClick="location.href='${naver_url}'">
          <span>
            <img src="<c:url value="/resources/images/naver.png" />" alt="" />
          </span>
          네이버 계정으로 로그인
        </button>
        
        <button type="button" class="kakao" onClick="location.href='${kakao_url}'">
          <span>
            <img src="<c:url value="/resources/images/kakao.png" />" alt="" />
          </span>
          카카오 계정으로 로그인
        </button>
      </div>

      <div class="footer">
        <h3 class="logo">zero futsal</h3>
        <p class="copy">COPYRIGHT© zero futsal. ALLRIGHT RESERVED</p>
      </div>
    </section>
  </body>
</html>

