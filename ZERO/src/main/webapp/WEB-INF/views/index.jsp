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

<body id="indexBody">

	<jsp:include page="include/header.jsp" />

	<main>
		<div class="mainVideo">
			<video id="video1" autoplay playsinline loop muted>
				<source src="<c:url value='/resources/videos/banner.mp4'/>"
					type="video/mp4" />
			</video>
		</div>
	</main>

</body>

</html>
