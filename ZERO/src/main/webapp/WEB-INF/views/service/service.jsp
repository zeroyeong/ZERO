<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<html lang="ko"> 
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>공지/FAQ</title>
 
    <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/service.css" />" />
   <%-- <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css" />" /> --%>


    <!-- Font awsome -->
    <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous" ></script>
  </head>
  <body>
    <!-- header include -->
    <jsp:include page="../include/header.jsp" />

	<main>
      <div class="topVideo">
        <h2>공지사항</h2>
        <video id="video2" autoplay playsinline loop muted>
        	<source src="../videos/point.mp4" type="video/mp4" />
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
          <table>
            <thead>
              <tr>
                <th class="no">No.</th>
                <th class="title">제목</th>
                <th class="date">작성일</th>
                <th class="show">조회수</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="post-Notice.html">제목제목제목</a></td>
                <td>2023.09.11</td>
                <td>1</td>
              </tr>
            </tbody>
          </table>

          <form action="">
            <select name="" id="">
              <option value="">제목</option>
            </select>
            <input type="text" />
            <button type="button" class="searchButton">
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </form>

          <ul class="pagination">
            <li>1</li>
            <li>2</li>
          </ul>
        </section>

        <section class="faq">
          <table>
            <thead>
              <tr>
                <th class="no">No.</th>
                <th class="title">제목</th>
                <th class="date">작성일</th>
                <th class="show">조회수</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="post-Notice.html">제목제목제목</a></td>
                <td>2023.09.11</td>
                <td>1</td>
              </tr>
            </tbody>
          </table>

          <form action="">
            <select name="" id="">
              <option value="">제목</option>
            </select>
            <input type="text" />
            <button type="button" class="searchButton">
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
