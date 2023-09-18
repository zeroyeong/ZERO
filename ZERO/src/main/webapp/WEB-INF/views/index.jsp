<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZERO FUTSAL</title>

<!-- css 연결-->
<link rel="stylesheet" href="<c:url value="resources/css/common.css" />" />

<!-- js 연결-->
<script src="<c:url value="resources/js/common.js" />" defer></script>
<!--아이콘-->
<script src="https://kit.fontawesome.com/a923b8b28f.js"
	crossorigin="anonymous"></script>

</head>

<body id="indexBody">
	<header>
		<div class="headerBar">
			<h1 class="logo">
				<a href="../index.html">zero futsal</a>
			</h1>

			<nav class="webNav">
				<ul class="leftMenu">
					<li id="point"><a>지점<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="reservation"><a>예약<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="zCup"><a>Z-CUP<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="customer"><a>고객센터<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="manager"><a>Manager<span class="nav-bar hover-bar"></span></a>
					</li>
				</ul>

				<ul class="rightMenu">
					<li><a href="" class="sns facebook"> <i
							class="fa-brands fa-facebook"></i>
					</a></li>
					<li><a href="" class="sns instagram"> <i
							class="fa-brands fa-instagram"></i>
					</a></li>
					<li class="loginMenu"><a href="login/login.html">
							memberLogin <i class="fa-solid fa-user"></i>
					</a></li>
				</ul>
			</nav>
			<input type="checkbox" name="" id="toggleMenu" /> <label
				for="toggleMenu" class="toggleMenu"> <i
				class="fa-solid fa-bars" style="color: #ffffff"></i>
			</label>
			<nav class="slideMenu">
				<button type="button" class="memberLogin">
					MEMBER LOGIN <i class="fa-solid fa-user"></i>
				</button>
				<ul class="navMenu">
					<li id="point"><a>지점<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="reservation"><a>예약<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="zCup"><a>Z-CUP<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="customer"><a>고객센터<span class="nav-bar hover-bar"></span></a>
					</li>
					<li id="manager"><a>Manager<span class="nav-bar hover-bar"></span></a>
					</li>
				</ul>
				<ul class="snsMenu">
					<li><a href="" class="sns facebook"> <i
							class="fa-brands fa-facebook"></i>
					</a></li>
					<li><a href="" class="sns instagram"> <i
							class="fa-brands fa-instagram"></i>
					</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<main>
		<div class="mainVideo">
			<video id="video1" autoplay playsinline loop muted>
				<source src="<c:url value="resources/videos/banner.mp4"/>"
					type="video/mp4" />
			</video>
		</div>
	</main>

</body>

</html>