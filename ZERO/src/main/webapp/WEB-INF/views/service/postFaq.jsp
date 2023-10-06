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
    <link rel="stylesheet" href="<c:url value="/resources/css/post.css?q" />" />
    
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
        <li><a href="service">공지사항</a></li>
        <li class="active"><a href="service">FAQ</a></li>
      </ul>

      <div class="container">
        <h1 class="pageTitle notice">FAQ</h1>

        <table class="post">
          <thead>
            <tr>
              <th class="title" colspan="4">${faq.faqTitle}</th>
              <th class="date">작성일</th>
              <th class="dateInput">${faq.faqDate}</th>
              <th class="show">조회</th>
              <th class="showInput">${faq.faqHit}</th>
            </tr>
          </thead>
          <tbody>
          	<tr>
          	  <th>내용</th>
          	  <td colspan="2">${faq.faqContent}</td>
            </tr>
          </tbody>
        </table>

        <div class="addButtons">
    		 <form method="post" action="updateFaq">
				<button type="button" class="notAddBtns" name="faqNo" value="${faq.faqNo}">수정</button>
    		</form> 
    		<form method="get" action="deleteFaq">
    			<button type="button" class="notAddBtns" name="faqNo" value="${faq.faqNo}">삭제</button>
    		</form>  
          <button type="button" class="notAddBtns">목록</button>
        </div>

        <table class="postGo">
          <tr>
            <td>
              이전글
              <span>
                <i class="fa-solid fa-caret-up"></i>
              </span>
            </td>
            <td>이전 글 제목</td>
          </tr>
          <tr>
            <td>
              다음 글
              <span>
                <i class="fa-solid fa-caret-down"></i>
              </span>
            </td>
            <td>다음 글 제목</td>
          </tr>
        </table>
      </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
