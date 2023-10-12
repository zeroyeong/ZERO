<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ZERO FUTSAL</title>

  <!-- css 연결 -->
  <link rel="stylesheet" href="<c:url value="/resources/css/service.css"/>">
  
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
	
	    <input type="radio" name="service" id="notice" checked />
	    <input type="radio" name="service" id="faq" />
	    <ul class="harlfButton">
	      <li><label for="notice">공지사항</label></li>
	      <li><label for="faq">FAQ</label></li>
	    </ul>
	
	    <div class="container">
	      <h1 class="pageTitle notice">공지사항</h1>
	      <h1 class="pageTitle faq">FAQ</h1>
	 
	      <section class="notice">
	        <a href="${pageContext.request.contextPath}/service/noticeAdd"><input type="button" value="공지사항 작성" class="addBtn"></a>
	        <table>
	          <thead>
	            <tr>
	              <th class="no">No.</th>
	              <th class="title">제목</th>
	              <th class="date">작성일</th>
	              <th class="show">조회</th>
	            </tr>
	          </thead>
	          <tbody>
	            <c:forEach items="${noticeList}" var="notice">
	              <tr>
	                <td>${notice.notice_no}</td>
	                <td>
	                  <div class="noticeTitle">
	                    <a href="<c:url value="/service/notice_${notice.notice_no}" />">${notice.notice_title}</a>
	                  </div>
	                </td>
	                <td>${notice.notice_date}</td>
	                <td>${notice.notice_hit}</td>
	              </tr>
	            </c:forEach>
	          </tbody>
	        </table>
	
	        <form action="${pageContext.request.contextPath}/service/noticesearch" method="get">
	          <select>
	            <option>제목</option>
	          </select>
	          <input type="text" name="keyword" />
	          <button type="submit" class="searchButton">
	            <i class="fa-solid fa-magnifying-glass"></i>
	          </button>
	        </form>
	
	        <ul class="pagination">
	          <li>1</li>
	          <li>2</li>
	        </ul>
	      </section>
	
	      <section class="faq">
	        <a href="${pageContext.request.contextPath}/service/faqAdd"><input type="button" value="FAQ 작성" class="addBtn"></a>
	        <table>
	          <thead>
	            <tr>
	              <th class="no">No.</th>
	              <th class="title">제목</th>
	              <th class="date">작성일</th>
	              <th class="show">조회</th>
	            </tr>
	          </thead>
	          <tbody>
	            <c:forEach items="${faqList}" var="faq">
	              <tr>
	                <td>${faq.faq_no}</td>
	                <td>
	                  <div class="faqTitle">
	                    <a href="<c:url value="/service/faq_${faq.faq_no}" />">${faq.faq_title}</a>
	                  </div>
	                </td>
	                <td>${faq.faq_date}</td>
	                <td>${faq.faq_hit}</td>
	              </tr>
	            </c:forEach>
	          </tbody>
	        </table>
	
	        <form action="${pageContext.request.contextPath}/service/faqsearch" method="get">
	          <select>
	            <option>제목</option>
	          </select>
	          <input type="text" name="keyword" />
	          <button type="submit" class="searchButton">
	            <i class="fa-solid fa-magnifying-glass"></i>
	          </button>
	        </form>
	
	        <ul class="pagination">
	          <li>1</li>
	          <li>2</li>
	        </ul>
	      </section>
	    </div>
	  </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>