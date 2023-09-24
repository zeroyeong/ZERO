<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO FUTSAL</title>

    <!-- css 연결-->
    <link rel="stylesheet" href="<c:url value="/resources/css/reservation.css"/>">

    <!--아이콘-->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- header include -->
    <jsp:include page="../include/header.jsp" />

    <main>
        <div class="topVideo">
            <h2>예약확인</h2>
            <video id="video2" autoplay playsinline loop muted>
                <source src="<c:url value="/resources/videos/point.mp4"/>" type="video/mp4" />
            </video>
        </div>

        <ul class="harlfButton">
            <li><a href="reservation.html"><label>예약</label></a></li>
            <li id="reserComplete"><a href="#"><label>예약확인</label></a></li>
        </ul>

        <div class="container">

            <h1>예약확인</h1>
		<c:forEach items="${reservationList}" var="reservation">
		<form action="../reservation/test" method="post">
            <div class="reserInfoTable">
                <table>
                    <colgroup>
                        <col class="t01" style="width:150px" />
                        <col width="" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">예약일자</th>
                            <td class="infoLeft">${reservation.re_date }</td>
                        </tr>
                        <tr>
                            <th scope="row">신청자</th>
                            <td class="infoLeft">${reservation.re_name }</td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td class="infoLeft">${reservation.re_tel1 }-${reservation.re_tel2 }-${reservation.re_tel3 }</td>
                        </tr>
                        <tr>
                            <th scope="row">지점</th>
                            <td class="infoLeft">${reservation.branch_name }</td>
                        </tr>
                        <tr>
                            <th scope="row">선택구장</th>
                            <td class="infoLeft">${reservation.stadium_name }</td>
                        </tr>
                        <tr>
                            <th scope="row">예약시간</th>
                            <td class="infoLeft">
                                ${reservation.time_start }~${reservation.time_end } (2시간)<BR>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">총 결제금액</th>
                            <td class="infoLeft">${reservation.re_totalpay }원</td>
                        </tr>
                        <tr>
                            <th scope="row">결제여부</th>
                            <td class="infoLeft">
                                <option value="10">${reservation.re_payment }</option>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">예약취소확인</th>
                            <td class="infoLeft">
                                <input type="password" placeholder="예약비밀번호" name="re_pwd" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <input name="re_no" value="${reservation.re_no }">
            <div class="btnWrap">
                <button class="btnCancel">예약취소하기</button>
            </div>
            </form>
          </c:forEach>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>