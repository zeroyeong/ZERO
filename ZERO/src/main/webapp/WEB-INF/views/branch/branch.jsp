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
    <link rel="stylesheet" href="<c:url value="/resources/css/point.css"/>">

    <!-- js 연결-->
    <script src="/resources/js/common.js" defer></script>

    <!--아이콘-->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
</head>

<body>
  	<!-- header include -->
	<jsp:include page="../include/header.jsp" />

    <main>
        <div class="topVideo">
            <h2>지점현황</h2>
            <video id="video2" autoplay playsinline loop muted>
                <source src="resources/videos/point.mp4" type="video/mp4" />
            </video>
        </div>
        <div class="subMenuBar">
            <div class="subMenu">
                <input type="checkbox" name="" id="menuDown" />
                <button type="button" class="subMenuTitle">
                    전체지점보기
                    <span>
                        <label for="menuDown">
                            <i class="fa-solid fa-chevron-down"></i>
                        </label>
                    </span>
                </button>

                <div class="subMenuList">
                    <ul class="subMenus areaTitle">
                        <li>
                            <a>서울, 경기 지역</a>
                            <ul class="areaList">
                                <li><a href="">더피치 인하점</a></li>
                                <li><a href="">더피치 평택점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>대전, 충청 지역</a>
                            <ul class="areaList">
                                <li><a href="">더피치 천안신방점</a></li>
                                <li><a href="">아산인주풋살장</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>부산, 경상 지역</a>
                            <ul class="areaList">
                                <li><a href="">부산 북구점</a></li>
                                <li><a href="">울산 남구점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>광주, 전라 지역</a>
                            <ul class="areaList">
                                <li><a href="">전주 완산점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>제주 지역</a>
                            <ul class="areaList">
                                <li><a href="">제주 서귀포점</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="contentList">
        <c:forEach items="${branchList}" var="branch">
            <div class="list">
                <span class="pointImg">
                    <img src="<c:url value="/resources/images/${branch.branch_pic}"/>" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">${branch.branch_name}</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>${branch.branch_address}</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>${branch.branch_tell}
                    </p>
                    <a href="<c:url value="/branch/${branch.branch_code}"/>" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="<c:url value="/branch/${branch.branch_code}_info"/>" class="infoBtn">	
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
        </c:forEach>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>

</html>