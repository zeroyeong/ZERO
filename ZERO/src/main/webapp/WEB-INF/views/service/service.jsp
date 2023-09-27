<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>

  <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/service.css" />" />

  <!-- js 연결 -->
  <script src="../js/common.js" defer></script>

  <!-- Font awsome -->
  <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
</head>

<body>
  <header>
    <div class="headerBar">
      <h1 class="logo"><a href="../index.html">zero futsal</a></h1>

      <nav class="webNav">
        <ul class="leftMenu">
          <li id="point">
            <a>지점<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="reservation">
            <a>예약<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="zCup">
            <a>Z-CUP<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="customer">
            <a>고객센터<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="manager">
            <a>Manager<span class="nav-bar hover-bar"></span></a>
          </li>
        </ul>

        <ul class="rightMenu">
          <li>
            <a href="" class="sns facebook">
              <i class="fa-brands fa-facebook"></i>
            </a>
          </li>
          <li>
            <a href="" class="sns instagram">
              <i class="fa-brands fa-instagram"></i>
            </a>
          </li>
          <li class="loginMenu">
            <a href="../login/login.html">
              memberLogin
              <i class="fa-solid fa-user"></i>
            </a>
          </li>
        </ul>
      </nav>
      <input type="checkbox" name="" id="toggleMenu" />
      <label for="toggleMenu" class="toggleMenu">
        <i class="fa-solid fa-bars" style="color: #ffffff"></i>
      </label>
      <nav class="slideMenu">
        <button type="button" class="memberLogin">
          MEMBER LOGIN
          <i class="fa-solid fa-user"></i>
        </button>
        <ul class="navMenu">
          <li id="point">
            <a>지점<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="reservation">
            <a>예약<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="zCup">
            <a>Z-CUP<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="customer">
            <a>고객센터<span class="nav-bar hover-bar"></span></a>
          </li>
          <li id="manager">
            <a>Manager<span class="nav-bar hover-bar"></span></a>
          </li>
        </ul>
        <ul class="snsMenu">
          <li>
            <a href="" class="sns facebook">
              <i class="fa-brands fa-facebook"></i>
            </a>
          </li>
          <li>
            <a href="" class="sns instagram">
              <i class="fa-brands fa-instagram"></i>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </header>

  <main>
    <div class="topVideo">
      <h2>고객센터</h2>
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
        <a href="notAdd"><input type="button" value="공지사항 작성" class="addBtn"></a>
        <table>
          <thead>
            <tr>
              <th class="no">번호</th>
              <th class="title">제목</th>
              <th class="date">작성일</th>
              <th class="show">조회</th>
            </tr>
          </thead>
          <tbody>
			 <c:forEach items="${noticeList}" var="notice"> 
			  <td>${notice.notNo}</td>
		      <td>
		       <div class="noticeTitle">
		        <a href="<c:url value="/service/postNotice?notNo=${notice.notNo}"/>">${notice.notTitle}</a>
		       </div>
		      </td> 
			  <td>${notice.notDate}</td>
			  <td>${notice.notHit}</td>
			 </c:forEach>
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
        <a href="faqAdd"><input type="button" value="FAQ 작성" class="addBtn"></a>
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
			 <c:forEach items="${faqList}" var="faq"> 
			  <td>${faq.faqNo}</td>
		      <td>
		       <div class="faqTitle">
		        <a href="<c:url value="/service/postFaq?faqNo=${ faq.faqNo}"/>">${faq.faqTitle}</a>
		       </div>
		      </td> 
			  <td>${faq.faqDate}</td>
			  <td>${faq.faqHit}</td>
			 </c:forEach>
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

  <footer>
    <ul>
      <li><a href="">개인정보처리방침</a></li>
      <li><a href="">이용약관</a></li>
      <li><a href="">이메일무단수집거부</a></li>
    </ul>
    <p>copyright&copy;zero.allright reserved</p>
  </footer>

</body>

</html>

