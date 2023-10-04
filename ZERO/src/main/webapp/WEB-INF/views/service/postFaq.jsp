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
    <title>FAQ</title>

    <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/post.css" />" />

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>

    <!-- Font awsome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>
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

      <ul class="harlfButton">
        <li><a href="service.html">공지사항</a></li>
        <li class="active"><a href="service.html">FAQ</a></li>
      </ul>

      <div class="container">
        <h1 class="pageTitle notice">FAQ</h1>

        <table class="post">
          <thead>
            <tr>
              <th class="title" colspan="4">${faq.faqTitle}</th>
            </tr>
            <tr>
              <th class="date">작성일</th>
              <th class="dateInput">${faq.faqDate}</th>
              <th class="show">조회</th>
              <th class="showInput">${faq.faqHit}</th>
            </tr>
          </thead>
          <tbody>
            <td colspan="4">${faq.faqContent}</td>
          </tbody>
        </table>

        <div class="addButtons">
          <button type="button" class="notAddBtns">수정</button>
    		<form method="get" action="deleteFaq">
    			<input type="hidden" name="faqNo" value="${faq.faqNo}">
    			<input type="submit" value="삭제">
          <button type="button" class="notAddBtns">목록으로</button>
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
