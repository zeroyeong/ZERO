<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO FUTSAL</title>

    <!-- css 연결-->
    <link rel="stylesheet" href="<c:url value="/resources/css/reservation.css"/>">

    <!-- js 연결-->
    <script src="<c:url value="/resources/js/resInfo.js"/>" defer></script>

    <!--아이콘-->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
</head>

<body>
  	<!-- header include -->
	<jsp:include page="../include/header.jsp" />

    <main>
        <div class="topVideo">
            <h2>예약</h2>
            <video id="video2" autoplay playsinline loop muted>
                <source src="<c:url value="/resources/videos/point.mp4"/>" type="video/mp4" />
            </video>
        </div>

        <input type="radio" name="reservation" id="reser" checked />
        <input type="radio" name="reservation" id="reserCheck" />
        <ul class="harlfButton">
            <li><label for="reser">예약</label></li>
            <li><label for="reserCheck">예약확인</label></li>
        </ul>

        <div class="container">
            <h1 class="pageTitle reser">예약</h1>
            <h1 class="pageTitle reserCheck">예약확인</h1>

            <section class="reser">
                <div class="reserFrameBox">
                    <p><i class="fa-solid fa-location-dot"></i>예약을 원하시는 지점을 선택해 주세요</p>
                    <div class="reserBody">
                        <div class="reserContent">
                            <form action="#">
                                <span class="select">
                                    <label for="pointSelect">지점을 선택해주세요</label>
                                    <i class="fa-solid fa-caret-down"></i>
                                    <select name="" id="pointSelect" required>
                                        <option value>지점선택</option>
                                        <option value>더피치 인하점</option>
                                        <option value>더피치 평택점</option>
                                        <option value>더피치 천안신방점</option>
                                        <option value>아산인주풋살장</option>
                                        <option value>부산 북구점</option>
                                        <option value>울산 남구점</option>
                                        <option value>전주 완산점</option>
                                        <option value>제주 서귀포점</option>
                                    </select>
                                </span>
                            </form>
                            <div class="reserBtnBox">
                                <a href="reservationInfo.html" class="reserBtn">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="reserCheck">
                <div class="reserFrameBox">
                    <p><i class="fa-solid fa-location-dot"></i>예약 시 입력하신 정보를 입력해주십시오</p>
                    <div class="reserBody">
                        <div class="reserContent">
                            <span class="text">
                                <input type="text" placeholder="예약자명">
                                <input type="password" placeholder="비밀번호">
                            </span>
                            <div class="reserBtnBox">
                                <a href="reservationComplete.html" class="reserBtn">확인</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>