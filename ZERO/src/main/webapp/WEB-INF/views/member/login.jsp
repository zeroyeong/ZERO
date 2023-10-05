<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
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
   <title>Z-CUP</title>

   <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/login.css" />" />

   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/member.js?b" />" defer></script>
   
   <!-- naver 로그인 -->
	<!-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>-->

   <!-- 카카오톡 로그인 -->
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
</head> 
 <body>
 
<!-- naver 소셜로그인 -->   
<%
String clientId = "YOUR_CLIENT_ID";//애플리케이션 클라이언트 아이디값";
String redirectURI = URLEncoder.encode("http://localhost:8080/zero/navercallback", "UTF-8"); //콜백주소
SecureRandom random = new SecureRandom();
String state = new BigInteger(130, random).toString();
String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code"
     + "&client_id=" + "ftP2BpWPuD8yQyXqmdlO"
     + "&redirect_uri=" + "http://localhost:8080/zero/navercallback"
     + "&state=" + state;
session.setAttribute("state", state);
%>
 
    <section class="container">
      <h1 class="logo" onclick="document.location.href='/zero';">zero futsal</h1>
      <form name="loginFrm" method="post" action="login">
        <dl>
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

        <label for="remembreId" class="remId">
          <input type="checkbox" name="remembreId" id="remembreId" />
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
          <a href="<%=apiURL%>"><img height="68" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>

        <button type="button" class="kakao" onClick="kakaoLogin();">
          <span>
            <img src="<c:url value="/resources/images/kakao.png" />" alt="" />
          </span>
          카카오 계정으로 로그인
        </button>
        <button type="button" class="naver">
          <span>
            <img src="<c:url value="/resources/images/naver.png" />" alt="" />
          </span>
          네이버 계정으로 로그인
        </button>
        <button type="button" class="faceBook" onClick="fnFbCustomLogin();">
          <span>
            <img src="<c:url value="/resources/images/facebook.png" />" alt="" />
          </span>
          구글 계정으로 로그인
        </button>
      </div>

      <div class="footer">
        <h3 class="logo">zero futsal</h3>
        <p class="copy">COPYRIGHT© zero futsal. ALLRIGHT RESERVED</p>
      </div>
    </section>

<!--     <input type="checkbox" id="findId" />
    <label for="findId" class="background"></label>
    <section class="findId">
      <label for="findId" class="closeBtn">×</label>
      <h3>회원정보를 입력해 주세요.</h3>
      <form action="login/findId" name="findId" method="post">
        <dl>
          <dt><label for="userName">이름</label></dt>
          <dd><input type="text" id="userName" placeholder="이름입력" name="mem_name" required /></dd>
          <dt><label for="userPhone">휴대전화</label></dt>
          <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" name="mem_phone" required /></dd>
        </dl>
        <div class="button">
          <button type="button" onclick="findIdSubmit()">확인</button>
          <script>
	        function refreshSection(sectionId) {
	               const section = document.querySelector(sectionId);
	               section.innerHTML = section.innerHTML; 
	             }
          
	        function findIdSubmit(){
                document.findId.submit();
                refreshSection('findId');
             }
          </script>
        </div>
      </form>
    </section>

    <input type="checkbox" id="findPw" />
    <label for="findPw" class="background"></label>
    <section class="findPw">
      <label for="findPw" class="closeBtn">×</label>
      <h3>회원정보를 입력해 주세요.</h3>
      <form action="" name="findPw" method="post">
        <dl>
          <dt><label for="userId">아이디</label></dt>
          <dd><input type="text" id="userId" placeholder="아이디 입력" name="mem_id" required /></dd>
          <dt><label for="userName">이름</label></dt>
          <dd><input type="text" id="userName" placeholder="이름입력" name="mem_name" required /></dd>
          <dt><label for="userPhone">휴대전화</label></dt>
          <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" name="mem_phone" required /></dd>
        </dl>
        <div class="button">
          <button>확인</button>
        </div>
      </form>
    </section> -->
    
<script type="text/javascript">

function refreshSection() {
    const section = document.getElementById('findId');
    section.innerHTML = section.innerHTML; // 섹션 내용을 갱신
}
</script>
  </body>
</html>

