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
   <title>Z-CUP</title>

   <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/login.css?11" />" />

   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/login.js" />" defer></script>

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
</head> 
 <body>
    <section class="container">
      <h1 class="logo" onclick="document.location.href='/';">zero futsal</h1>
      
      <c:if test="${not empty error}"> <!-- 인증에 실패했을 때 모델속성 error에 저장된 값이 있다면 오류를 출력한다. -->
      	<div> 
      		이메일과 비밀번호가 올바르지 않습니다.
      	</div>
      </c:if>
      <form action="" name="loginFrm" action="<c:url value="/login"/>" method="post"> <!-- form태그 선언 및 로그인 인증을 위한 요청경로 설정 -->
        <dl>
          <dt>
            <label for="userId">아이디</label>
          </dt>
          <dd>
            <input type="text" name="userId" id="userId" placeholder="이메일" />
          </dd>
          <dt>
            <label for="userPw">비밀번호</label>
          </dt>
          <dd>
            <input type="password" name="userPw" id="userPw" placeholder="비밀번호" />
          </dd>
        </dl>

        <label for="remembreId" class="remId">
          <input type="checkbox" name="remembreId" id="remembreId" />
          <span class="icon"></span>
          아이디 저장
        </label>

        <button type="button" onClick="loginCheck()">로그인</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      </form>

      <ul class="acBtn">
        <li><label for="findId">아이디 찾기</label></li>
        <li><label for="findPw">비밀번호 찾기</label></li>
        <li><a href="">회원가입</a></li>
      </ul>

      <div class="snsLogin">
        <p>SNS 간편로그인</p>
        <button type="button" class="kakao">
          <span>
            <img src="../images/kakao.png" alt="" />
          </span>
          카카오 계정으로 로그인
        </button>
        <button type="button" class="naver">
          <span>
            <img src="../images/naver.png" alt="" />
          </span>
          네이버 계정으로 로그인
        </button>
        <button type="button" class="faceBook">
          <span>
            <img src="../images/facebook.png" alt="" />
          </span>
          페이스북 계정으로 로그인
        </button>
      </div>

      <div class="footer">
        <h3 class="logo">zero futsal</h3>
        <p class="copy">COPYRIGHT© zero futsal. ALLRIGHT RESERVED</p>
      </div>
    </section>

    <input type="checkbox" id="findId" />
    <label for="findId" class="background"></label>
    <section class="findId">
      <label for="findId" class="closeBtn">×</label>
      <h3>회원정보를 입력해 주세요.</h3>
      <form action="">
        <dl>
          <dt><label for="userName">이름</label></dt>
          <dd><input type="text" id="userName" placeholder="이름입력" /></dd>
          <dt><label for="userPhone">휴대전화</label></dt>
          <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" /></dd>
        </dl>
        <div class="button">
          <button type="button">확인</button>
        </div>
      </form>
    </section>

    <input type="checkbox" id="findPw" />
    <label for="findPw" class="background"></label>
    <section class="findPw">
      <label for="findPw" class="closeBtn">×</label>
      <h3>회원정보를 입력해 주세요.</h3>
      <form action="">
        <dl>
          <dt><label for="userId">아이디</label></dt>
          <dd><input type="text" id="userId" placeholder="아이디 입력" /></dd>
          <dt><label for="userName">이름</label></dt>
          <dd><input type="text" id="userName" placeholder="이름입력" /></dd>
          <dt><label for="userPhone">휴대전화</label></dt>
          <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" /></dd>
        </dl>
        <div class="button">
          <button type="button">확인</button>
        </div>
      </form>
    </section>
  </body>
</html>
