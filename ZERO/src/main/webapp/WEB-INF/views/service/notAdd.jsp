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
	<link rel="stylesheet" href="<c:url value="/resources/css/post.css?qweqwe"/>">
    
</head>

<body>
  	<!-- header include -->
	<jsp:include page="../include/header.jsp" />

	  <main>
	     <div class="topVideo">
	         <h2>고객센터</h2>
	         <video id="video2" autoplay playsinline loop muted>
	             <source src="resources/videos/point.mp4" type="video/mp4" />
	         </video>
	     </div>
	

        <ul class="harlfButton">
            <li class="active"><a href="service">공지사항</a></li>
            <li><a href="service">FAQ</a></li>
        </ul>
		
        <div class="container">
            <h1 class="pageTitle notice">공지사항</h1>
            
            <table class="postAdd">
            <form:form modelAttribute = "NewNotice" method="post" action="service/notice" enctype="multipart/form-data">
                <thead>
                
                    <tr>
                        <th class="title" colspan="4">제목</th>
                        <td><input type="text" class="titleInput" placeholder="제목내용"></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="title" colspan="4">본문</th>
                        <td><textarea class="contentInput" placeholder="본문"></textarea></td>
                    </tr>
                    <tr>
                        <th class="title" colspan="4">이미지</th>
                        <td>
                            <form:input class="fileName" path="notFile" />
                            <input type="file" id="fileInput">
                            <label for="fileInput">이미지 찾기</label>
                        </td>
                    </tr>
                </tbody>
               </form:form>
            </table>
        
            <div class="addButtons">
                <input type="button" value="수정" class="notAddBtns">
                <input type="button" value="삭제" class="notAddBtns">
                <input type="button" value="작성" class="notAddBtns">
            </div>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>

</html>