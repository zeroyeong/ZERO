<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

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
                        <th class="col4">선수명</th>
                        <th class="col5">출전</th>
                        <th class="col6">득점</th>
                        <th class="col7">경고</th>
                        <th class="col8">퇴장</th>
                        <th colspan="2" class="col9">관리</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${player_list}" var="player_list">
                    <c:set var="num" value="${num + 1}" />
                    <tr>
                        <td>${num}</td>
                        <td>${player_list.player_name}</td>
                        <td>${player_list.player_games}</td>
                        <td>${player_list.player_goal}</td>
                        <td>${player_list.player_yellow_card}</td>
                        <td>${player_list.player_red_card}</td>
                        <td colspan="2">
                            <a class="playerBtn" onclick="openPlayerPopup('${player_list.player_no}')">수정</a>
                            <a class="playerDelBtn" onclick="playerDelete('${player_list.player_no}',${team_no})">퇴출</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <!--선수관리 팝업-->
        <c:forEach items="${player_list}" var="player_list">
        <form:form id="playerForm${player_list.player_no}" modelAttribute = "playerUpdate" method="post" action="mgrPlayerList" enctype="multipart/form-data">
        <div class="playerPopup" id="playerPopup${player_list.player_no}">
            <section class="playerInfo">
                <span class="closeBtn" onclick="closePopup(playerPopup${player_list.player_no})">x</span>
                <table class="mgrPlayerInfo">
              		<form:input type="hidden" path="team_no" value="${team_no}"/>
					<form:input type="hidden" path="player_no" value="${player_list.player_no}"/>
                    <tr>
                        <th>선수명</th>
                        <td><form:input class="schSelect" type="text" path="player_name" value="${player_list.player_name}"/></td>
                    </tr>
                    <tr>
                        <th>출전</th>
                        <td><form:input class="schSelect" type="text" path="player_games" value="${player_list.player_games}"/></td>
                    </tr>
                    <tr>
                        <th>득점</th>
                        <td><form:input class="schSelect" type="text" path="player_goal" value="${player_list.player_goal}"/></td>
                    </tr>
                    <tr>
                        <th>경고</th>
                        <td><form:input class="schSelect" type="text" path="player_yellow_card" value="${player_list.player_yellow_card}"/></td>
                    </tr>
                    <tr>
                        <th>퇴장</th>
                        <td><form:input class="schSelect" type="text" path="player_red_card" value="${player_list.player_red_card}"/></td>
                    </tr>
                </table>

                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('playerPopup', ${player_list.player_no})">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('playerPopup', ${player_list.player_no})">
                </div>

            </section>
        </div>
        </form:form>
        </c:forEach>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>