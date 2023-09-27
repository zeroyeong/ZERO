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
    <link rel="stylesheet" href="<c:url value="/resources/css/join.css?3" />" />
    
   	<!-- js 연결 -->
    <script src="<c:url value="/resources/js/join.js?12" />" defer></script>
    
  </head>
  <script>
	function useId(){
		opener.joinFrm.mem_id.value="${mem_id}";
		opener.joinFrm.checkId.value=true;
		opener.joinFrm.mem_pw.focus();
		window.close();
	}
	
	function idFrmSubmit(id){
		if(id.indexOf("@") == -1 || id.indexOf(".com") == -1){
			console.log(id);
			alert("이메일 형식이 잘못됐습니다. 확인해주세요!");
		} else{
			document.idFrm.action = "idCheck?id="+id;
			document.idFrm.submit();
		}
		
	}
  </script>
  
  <body>
    <div class="container IdCheck">
      <div class="title">
        <h3 class="pageTitle">ID 중복확인</h3>
        <button onclick="window.close()">×</button>
      </div>

      <form method="get" name="idFrm" action="idCheck">
      	
      	<c:choose>
      		<c:when test="${result != 0}">
      		
				<div class="no">
		          <p>입력하신 <span>${mem_id}</span> 는(은)<br>
		          	 이미 존재하는 이메일 주소입니다.</p>
		          <div class="search">
		            <label for="">이메일</label>
		            <input type="email" placeholder="이메일주소 입력" name="id" />
		            <button type="button" onClick="idFrmSubmit(this.form.id.value)" >중복확인</button>
		          </div>
		        </div>
      		</c:when>
      		<c:otherwise>
      			<div class="yes">
		          <p>
		            입력하신 <span>${mem_id}</span> 는(은) 사용가능합니다. <br />
		            입력하신 이메일주소를 사용하시겠습니까?
		          </p>
		          <button type="button" onClick="useId()">사용하기</button>
		        </div>
      		</c:otherwise>
      	</c:choose>  
      </form>
    </div>
  </body>
</html>