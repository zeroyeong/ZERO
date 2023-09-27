<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ZERO FUTSAL</title>

<!-- CSS 연결 -->
<link rel="stylesheet" href="<c:url value='/resources/css/manager.css' />" />

<!-- JS 연결 -->
<script src="<c:url value='/resources/js/manager.js' />" defer></script>

</head>

<body>
    <!-- header include -->
    <jsp:include page="../include/header.jsp" />

    <main>
        <section id="addPlayerContent">
            <table>
                <thead>
                    <tr>
                        <th class="col1">순번</th>
                        <th class="col2">지점명</th>
                        <th class="col3">팀명</th>
                        <th class="col4">선수명</th>
                        <th class="col5">출전</th>
                        <th class="col6">득점</th>
                        <th class="col7">경고</th>
                        <th class="col8">퇴장</th>
                        <th colspan="2" class="col9">관리</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>더피치 평택점</td>
                        <td>
                            <div class="teamName">
                                <div class="teamImage">
                                    <img src="../images/팀2.jpg" alt="" />
                                </div>
                                <div class="teamTitle">
                                    <a href="">팀 1</a>
                                </div>
                            </div>
                        </td>
                        <td>선수명</td>
                        <td>출전</td>
                        <td>득점</td>
                        <td>경고</td>
                        <td>퇴장</td>
                        <td colspan="2">
                            <a class="playerBtn" onclick="openPlayerPopup()">수정</a>
                            <a class="playerDelBtn" onclick="">삭제</a>
                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>더피치 평택점</td>
                        <td>
                            <div class="teamName">
                                <div class="teamImage">
                                    <img src="../images/팀2.jpg" alt="" />
                                </div>
                                <div class="teamTitle">
                                    <a href="">팀 1</a>
                                </div>
                            </div>
                        </td>
                        <td>선수명</td>
                        <td>출전</td>
                        <td>득점</td>
                        <td>경고</td>
                        <td>퇴장</td>
                        <td colspan="2">
                            <a class="playerBtn" onclick="openPlayerPopup()">수정</a>
                            <a class="playerDelBtn" onclick="">삭제</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>

        <!--선수관리 팝업-->
        <div class="playerPopup" id="playerPopup">
            <section class="playerInfo">
                <span class="closeBtn" onclick="closePopup(playerPopup)">x</span>
                <table class="mgrPlayerInfo">
                    <tr>
                        <th>지점</th>
                        <td>더피치 평택점</td>
                    </tr>
                    <tr>
                        <th>팀명</th>
                        <td>팀1</td>
                    </tr>
                    <tr>
                        <th>선수명</th>
                        <td>선수명</td>
                    </tr>
                    <tr>
                        <th>출전</th>
                        <td>출전</td>
                    </tr>
                    <tr>
                        <th>득점</th>
                        <td>득점</td>
                    </tr>
                    <tr>
                        <th>경고</th>
                        <td>경고</td>
                    </tr>
                    <tr>
                        <th>퇴장</th>
                        <td>퇴장</td>
                    </tr>
                </table>

                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('playerPopup')">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('playerPopup')">
                </div>

            </section>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>