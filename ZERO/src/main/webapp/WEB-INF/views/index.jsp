<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZERO FUTSAL</title>
</head>

<body id="indexBody">
  	<!-- header include -->
	<jsp:include page="include/header.jsp" />

	<main>
		<div class="mainVideo">
			<video id="video1" autoplay playsinline loop muted>
				<source src="<c:url value='/resources/videos/banner.mp4'/>" type="video/mp4" />
			</video>
		</div>
	</main>

</body>

</html>
