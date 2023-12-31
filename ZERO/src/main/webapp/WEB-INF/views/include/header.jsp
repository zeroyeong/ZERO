<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZERO FUTSAL</title>

<!-- CSS 연결 -->
<link rel="stylesheet" href="<c:url value='/resources/css/common.css' />" />

<!-- JS 연결 -->
<script src="<c:url value='/resources/js/common.js' />" defer></script>

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
</head>

<header>
	<div class="headerBar">
		<h1 class="logo">
			<a href="<c:url value="/" />">zero futsal</a>
		</h1>

		<nav class="webNav">
			<ul class="leftMenu">
				<li id="point"><a>지점<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="Reservation"><a>예약<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="zCup"><a>Z-CUP<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="service"><a>고객센터<span class="nav-bar hover-bar"></span></a>
				</li>
				<c:if test="${sessionScope.mem_ac == 1}">
					<li id="manager"><a>Manager<span class="nav-bar hover-bar"></span></a>
					</li>
				</c:if>
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
				<c:if test="${sessionScope.mem_id == null}">
				<li class="loginMenu">
					<a href="<c:url value="/login"/>">
						memberLogin<i class="fa-solid fa-user"></i>
					</a>
				</li>
				</c:if>
				
				<c:if test="${sessionScope.mem_id != null}">
				<li class="loginMenu">
					<a href="<c:url value="/mypage"/>">
						my page<i class="fa-solid fa-user"></i>
					</a>
				</li>
				<li class="logout">
					<a href="<c:url value="/logout"/>">
						log out
						<i class="fa-solid fa-arrow-right-from-bracket"></i>
					</a>
				</li>
				</c:if>
			</ul>
		</nav>
		
		<input type="checkbox" name="" id="toggleMenu" /> 
		<label for="toggleMenu" class="toggleMenu"> 
			<i class="fa-solid fa-bars" style="color: #ffffff"></i> 
		</label>
		
		<nav class="slideMenu">
		
			<c:if test="${sessionScope.mem_id == null}">
			<button type="button" class="memberLogin">
				<a href="<c:url value="/login"/>">
					MEMBER LOGIN <i class="fa-solid fa-user"></i>
				</a>
			</button>
			</c:if>
			
			<c:if test="${sessionScope.mem_id != null}">
			<button type="button" class="memberLogin">
				<a href="<c:url value="/mypage"/>">
					MYPAGE <i class="fa-solid fa-user"></i>
				</a>
			</button>
			<button type="button" class="memberLogin">
				<a href="<c:url value="/logout"/>">
					LOGOUT <i class="fa-solid fa-arrow-right-from-bracket"></i>
				</a>
			</button>
			</c:if>
			<ul class="navMenu">
				<li id="point"><a>지점<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="Reservation"><a>예약<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="zCup"><a>Z-CUP<span class="nav-bar hover-bar"></span></a>
				</li>
				<li id="service"><a>고객센터<span class="nav-bar hover-bar"></span></a>
				</li>
				<c:if test="${sessionScope.mem_ac == 1}">
					<li id="manager"><a>Manager<span class="nav-bar hover-bar"></span></a>
					</li>
				</c:if>

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