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
    <title>NOTICE</title>
    
	<!-- css 연결 -->
	<link rel="stylesheet" href="<c:url value="/resources/css/post.css"/>">
    
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
            <li class="active"><a href="${pageContext.request.contextPath}/service">공지사항</a></li>
            <li><a href="${pageContext.request.contextPath}/service">FAQ</a></li>
        </ul>
		
        <div class="container">
            <h1 class="pageTitle notice">공지사항</h1>
            
         	<form:form modelAttribute = "notice" method="post" action="../service/noticeAdd" enctype="multipart/form-data">
            <table class="postAdd">
                <thead>
                 
                    <tr>
                        <th class="title" colspan="4">제목</th>
                        <td><form:input type="text" class="titleInput" placeholder="제목내용" path="notice_title" /></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="title" colspan="4">본문</th>
                        <td><form:textarea class="contentInput" placeholder="본문" path="notice_content" /></td>
                    </tr>
                    <tr>
                        <th class="title" colspan="4">이미지</th>
                        <td>
                            <form:input type="file" id="fileInput" path="notice_imagefile" />
                        </td>
                    </tr>
                </tbody>
            </table>
        
            <div class="addButtons">
                <button class="notAddBtns">작성</button>
            </div>
            </form:form>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>

</html>