<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/login.css" />" />

   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/member.js?b" />" defer></script>
    
    
    <style>
      label[for='findId'] {
        cursor: pointer;
      }
      
      section.findId,
	  section.findPw{
	  display:block;
	  }
    </style>
</head>
<body>
    <section class="findId">
      <label for="findId" class="closeBtn" onclick="window.close();">×</label>
			<div class="basicFrm">
	        <h3>회원정보를 입력해 주세요.</h3>
	        <form action="findId" name="findId" method="post">
	          <dl>
	            <dt><label for="userName">이름</label></dt>
	            <dd><input type="text" id="userName" placeholder="이름입력" name="mem_name" required /></dd>
	            <dt><label for="userPhone">휴대전화</label></dt>
	            <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" name="mem_phone" required /></dd>
	          </dl>
	          <div class="button">
	            <button>확인</button>
	          </div>
	        </form>
	      </div>          
    </section>
  </body>
</html>