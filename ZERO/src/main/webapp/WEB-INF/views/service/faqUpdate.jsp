<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FAQ</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="<c:url value="/resources/css/post.css" />" />
    
    <!-- js -->
    <script src="<c:url value='/resources/js/service.js' />" defer></script>
    
</head>

<body>
  	<!-- header include -->
	<jsp:include page="../include/header.jsp" />

	  <main>
	     <div class="topVideo">
	         <h2>고객센터</h2>
	         <video id="video2" autoplay playsinline loop muted>
	             <source src="<c:url value="/resources/videos/point.mp4"/>" type="video/mp4" />
	         </video>
	     </div>

        <ul class="harlfButton">
            <li><a href="${pageContext.request.contextPath}/service">공지사항</a></li>
            <li class="active"><a href="${pageContext.request.contextPath}/service">FAQ</a></li>
        </ul>

        <div class="container">
            <h1 class="pageTitle notice">FAQ</h1>
            
		<form:form modelAttribute ="faq">
            <table class="postAdd">
                <thead> 
                    <tr>
                        <th class="title" colspan="4">제목</th>
                        <td><form:input type="text" class="titleInput" placeholder="${faq.faq_title }" path="faq_title" /></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="title" colspan="4">본문</th>
                        <td><form:textarea class="contentInput" placeholder="${faq.faq_content }" path="faq_content"/></td>
                    </tr>
                </tbody>
            </table>
			<form:hidden path="faq_no" value="${faq.faq_no}" />
            <div class="addButtons">
                <button type="submit" class="notAddBtns" formaction="../faq_${faq.faq_no}/update" formmethod="post" onclick="updateAlert()">수정</button>
                <button type="submit" class="notAddBtns" formaction="../faq_${faq.faq_no}/delete" formmethod="post" onclick="deleteAlert()">삭제</button>
            </div>
       </form:form>
        </div>
 
    </main>

     <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>

</html>