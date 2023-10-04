<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>

   <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/myPage.css" />" />

   <!-- js 연결 -->
   
</head>
<body>
	<section class="container">
      <h1 class="logo" onclick="document.location.href='/';">zero futsal</h1>
      <form action="" method="post">
        <ul>
          <li>
            <label for="mem_id">이메일</label>
            <span>mem_id</span>
          </li>
          <li>
            <label for="mem_name">이름</label>
            <div>
              <span>mem_name</span>
              <button type="button">회원탈퇴</button>
            </div>
          </li>
          <li>
            <label for="mem_pw">비밀번호</label>
            <input type="password" id="mem_pw" name="mem_pw" />
          </li>
          <li>
            <label for="mem_pw2">비밀번호 재확인</label>
            <input type="password" id="mem_pw2" name="mem_pw2" />
          </li>
          <li>
            <label for="mem_phone">휴대전화</label>
            <input type="text" id="mem_phone" name="mem_phone" placeholder="-포함해서 입력" value="mem_phone" />
          </li>
          <li><button class="button">예약확인 바로가기</button></li>
          <li class="btns"><button>정보수정</button> <button type="reset">취소하기</button></li>
        </ul>
      </form>

      <div class="footer">
        <h3 class="logo">zero futsal</h3>
        <p class="copy">COPYRIGHT© zero futsal. ALLRIGHT RESERVED</p>
      </div>
    </section>
</body>
</html>