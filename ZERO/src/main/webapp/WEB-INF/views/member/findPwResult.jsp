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
    <link rel="stylesheet" href="<c:url value="/resources/css/login.css?as" />" />

    <!-- js 연결 -->
    <script src="<c:url value="/resources/js/member.js?b" />" defer></script>
</head>
<body>
    <section class="findPw">
      <label for="findId" class="closeBtn" onclick="window.close();">×</label>
      
	<c:choose>
		<c:when test="${mem_pw != null}">
			<div class="succes">
			  <h3 style="margin-bottom: 30px">
			   비밀번호를 찾았습니다. <br />
			   password: ${mem_pw}
			  </h3>
			<div class="button">
			  <button type="button" onclick="window.close()">확인</button>
			  </div>
			</div>
		</c:when>
	
		<c:otherwise>
		<div class="falseFrm">
			  <h4 style="text-align: center">
			  입력한 정보에 일치하는 아이디가 없습니다.<br />
			  정보를 정확하게 입력해주세요.
			</h4>
			<form action="findPw" method="post">
				<dl>
				  <dt><label for="userId">아이디</label></dt>
				  <dd><input type="text" id="userId" placeholder="아이디 입력" name="mem_id" /></dd>
				  <dt><label for="userName">이름</label></dt>
				  <dd><input type="text" id="userName" placeholder="이름입력" name="mem_name"  /></dd>
				  <dt><label for="userPhone">휴대전화</label></dt>
	            <dd><input type="text" id="userPhone" placeholder="휴대전화번호 입력" name="mem_phone" required /></dd>
				</dl>
				<div class="button">
				  <button>확인</button>
				</div>
			</form>
		</div>
	    </c:otherwise>
	</c:choose>
	
    </section>
  </body>
</html>