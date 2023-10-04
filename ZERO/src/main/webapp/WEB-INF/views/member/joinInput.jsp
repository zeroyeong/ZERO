<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta path="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입</title>

	<!-- css 연결 -->
    <link rel="stylesheet" href="<c:url value="/resources/css/join.css" />" />
    
   	<!-- js 연결 -->
    <script src="<c:url value="/resources/js/join.js" />" defer></script>
    
  </head>
  <body>
    <section class="container">
      <h1 class="logo" onclick="document.location.href='/zero';">zero futsal</h1>
      <form:form modelAttribute = "NewMember" name="joinFrm" method="post" action="member">      
        <ul>
          <li>
            <label for="user_id">아이디(이메일)<span class="essential">(필수)</span></label>
            <div class="mail">
              <form:input type="email" path="mem_id" id="user_id" class="id_check" placeholder="이메일주소 입력" />
              <button type="button" onClick="idCheck(this.form.mem_id.value)">중복확인</button>
            </div> 
          </li>
          <li>
            <label for="user_pwd">비밀번호<span class="essential">(필수)</span></label>
            <form:input type="password" path="mem_pw" id="user_pwd" />
          </li>
          <li>
            <label for="user_pwd_check">비밀번호 재확인<span class="essential">(필수)</span></label>
            <input type="password" name="user_pwd_check" id="user_pwd_check" />
          </li>
          <li>
            <label for="user_name">이름<span class="essential">(필수)</span></label>
            <form:input type="text" path="mem_name" id="user_name" />
          </li>
          <li>
            <label for="user_phone">휴대전화</label>
            <form:input type="text" path="mem_phone" id="user_phone" placeholder="-포함해서 입력" />
          </li>
          <li class="confirmMail">
            <label>이메일 인증번호 전송</label>
            <button type="button">전송</button>
          </li>
          <li>
            <label for="message">본인 메일 인증<span class="essential">(필수)</span></label>
            <div class="mail">
              <input type="text" class="mailConfirm" id="emailConfirm" name="emailCode" placeholder="수신번호 입력" />
              <button type="button">인증</button>
            </div>
          </li>
        </ul>
        <button type="submit" class="joinBtn" onclick ="joinFrmSubmit()">가입하기</button>
        
        <!-- [중복확인] 버튼을 눌렀나 확인하는 hidden input -->
         <input type="hidden" name="checkId" id="checkId">
         <!-- [메일인증] 버튼을 눌렀나 확인하는 hidden input -->
         <input type="hidden" name="checkMail" id="checkMail">
        
      </form:form>

      <div class="footer">
        <h3 class="logo">zero futsal</h3>
        <p class="copy">COPYRIGHT© zero futsal. ALLRIGHT RESERVED</p>
      </div>
    </section>
  </body>
</html>
