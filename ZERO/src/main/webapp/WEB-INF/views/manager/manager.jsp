<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO FUTSAL</title>

    <!-- CSS 연결 -->
    <link rel="stylesheet" href="<c:url value='/resources/css/manager.css?q' />" />

    <!-- JS 연결 -->
    <script src="<c:url value='/resources/js/manager.js?qwqqadwwasdeq' />" defer></script>

</head>

<body>
    <!-- header include -->
    <jsp:include page="../include/header.jsp" />

    <main>

        <input type="radio" name="menuBtn" id="mgrReserRadio" checked />
        <input type="radio" name="menuBtn" id="mgrTeamRadio" />
        <input type="radio" name="menuBtn" id="mgrSchRadio" />
        <input type="radio" name="menuBtn" id="mgrUserRadio" />

        <ul class="harlfButton">
            <li>
                <label for="mgrReserRadio">예약승인</label>
            </li>
            <li>
                <label for="mgrTeamRadio">팀 관리</label>
            </li>
            <li>
                <label for="mgrSchRadio">경기일정</label>
            </li>
            <li>
                <label for="mgrUserRadio">사용자 관리</label>
            </li>
        </ul>

        <div class="container">
            <section id="mgrReserContent" class="mgrPage">
                <table>
                    <thead>
                        <tr>
                            <th class="no">번호</th>
                            <th class="title">제목</th>
                            <th class="date">작성일</th>
                            <th class="state">상태</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="popUp" data-popup="reserPopup">
                            <td>1</td>
                            <td>예약확인</td>
                            <td>2023.09.13</td>
                            <td>승인</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section id="mgrTeamContent" class="mgrPage">
                <table>
                    <thead>
                        <tr>
                            <th class="col1">순번</th>
                            <th class="col2">지점명</th>
                            <th class="col3">팀명</th>
                            <th class="col4">팀리더</th>
                            <th class="col5">팀전화번호</th>
                            <th class="col6">팀이메일</th>
                            <th class="col7">팀코드</th>
                            <th class="col8">팀비밀번호</th>
                            <th class="col9">관리</th>
                        </tr>
                    </thead>
                    <c:forEach items="${cupTeamList}" var="cupTeam">
                        <tbody>
                            <tr>
                                <td>${cupTeam.team_no}</td>
                                <td>${cupTeam.branch.branch_name}</td>
                                <td>
                                    <div class="teamName">
                                        <div class="teamImage">
                                            <img src="<c:url value="
                                                ${pageContext.request.contextPath}/resources/images/${cupTeam.team_emblem}" />"
                                            alt="">
                                        </div>
                                        <div class="teamTitle">
                                            <a href="<c:url value=" /mgrPlayerList" />">${cupTeam.team_name}</a>
                                        </div>
                                    </div>
                                </td>
                                <td>팀리더</td>
                                <td>팀전화번호</td>
                                <td>팀이메일</td>
                                <td>팀코드</td>
                                <td>팀비밀번호</td>
                                <td>
                               	    <a class="teamBtn" onclick="openTeamPopup('${cupTeam.team_no}')">수정</a>
                                    <a class="teamDelBtn" onclick="">삭제</a>
                                </td>
                            </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </section>

            <section id="mgrSchContent" class="mgrPage">
                <input type="button" value="경기일정추가" class="schAddBtn" onclick="openSchAddPopup()">
                <div class="mgrSch">
                    <c:forEach items="${cupTeamList}" var="cupTeam">
                        <ul>
                            <li class="place">시흥점</li>
                            <li class="playInfo">
                                <div class="schInfoDiv">
                                    <span>04.26(월)</span>
                                    <span>21:30</span>
                                    <span>A구장</span>
                                </div>
                            </li>
                            <li class="team leftTeam">
                                <a href="#">팀 스피드러너</a>
                                <a href="#">
                                    <img src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg" alt="" />
                                </a>
                            </li>
                            <li class="score">1 : 2</li>
                            <li class="team rightTeam">
                                <a href="#">
                                    <img src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg" />
                                </a>
                                <a href="#">team 동그라미</a>
                            </li>
                            <li class="button">
                                <a class="schBtn" onclick="openSchPopup()">수정</a>
                            </li>
                            <li class="button">
                                <a class="schDelBtn" onclick="">삭제</a>
                            </li>
                        </ul>
                    </c:forEach>
                </div>
            </section>

            <section id="mgrUserContent" class="mgrPage">
                <div class="mgrUserTableTop">
                    전체 사용자 수 : 01
                </div>
                <table>
                    <thead>
                        <tr>
                            <th class="no">번호</th>
                            <th class="col1">이름</th>
                            <th class="col2">전화번호</th>
                            <th class="col3">ID</th>
                            <th class="col4">PW</th>
                            <th class="state">관리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${cupTeamList}" var="cupTeam">
                            <tr>
                                <td>1</td>
                                <td>사용자1</td>
                                <td>010-0101-0101</td>
                                <td>id123</td>
                                <td>pw123</td>
                                <td><a class="userBtn" onclick="openUserPopup()">수정</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <ul class="pagination">
                    <li>1</li>
                    <li>2</li>
                </ul>
            </section>
        </div>
    </main>

    <!--예약승인 팝업-->
    <div class="reserPopup" id="reserPopup">
        <section class="reservationInfo">
            <span class="closeBtn" onclick="closePopup(reserPopup)">x</span>
            <h2>예약 정보</h2>
            <table class="mgrReserInfo">
                <tr>
                    <th>신청자</th>
                    <td>김대영</td>
                </tr>
                <tr>
                    <th>연락처</th>
                    <td>010-0909-1515</td>
                </tr>
                <tr>
                    <th>예약일자</th>
                    <td>2023-09-15</td>
                </tr>
                <tr>
                    <th>구장</th>
                    <td>A구장</td>
                </tr>
                <tr>
                    <th>Time</th>
                    <td>14:00 - 16:00</td>
                </tr>
                <tr>
                    <th>메모</th>
                    <td>메모내용</td>
                </tr>
            </table>

            <div class="mgrBtn">
                <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('reserPopup')">
                <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('reserPopup')">
            </div>

        </section>
    </div>

    <!--팀관리 팝업-->
    <c:forEach items="${cupTeamList}" var="cupTeam">
        <div class="teamPopup" id="teamPopup${cupTeam.team_no}">
            <section class="teamInfo">
                <span class="closeBtn" onclick="closePopup(teamPopup${cupTeam.team_no})">x</span>
                <h2>팀 정보</h2>
                <table class="mgrTeamInfo">
                    <tr>
                        <th>지점</th>
                        <td>
                            <form action="#">
                                <select class=schSelect name="" id="" required>
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
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <th>팀명</th>
                        <td><input class="schSelect" type="text" value="${cupTeam.team_name}"></td>
                    </tr>
                    <tr>
                        <th>팀 리더</th>
                        <td><input class="schSelect" type="text" value="0명"></td>
                    </tr>
                    <tr>
                        <th>팀전화번호</th>
                        <td><input class="schSelect" type="text" value="010-0102-1234"></td>
                    </tr>
                    <tr>
                        <th>팀 메일</th>
                        <td><input class="schSelect" type="text" value="123@naver.com"></td>
                    </tr>
                    <tr>
                        <th>팀 코드</th>
                        <td><input class="schSelect" type="text" value="code1111"></td>
                    </tr>
                    <tr>
                        <th>팀비밀번호</th>
                        <td><input class="schSelect" type="text" value="1111"></td>
                    </tr>
                </table>
                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('teamPopup',${cupTeam.team_no})">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('teamPopup${cupTeam.team_no}')">
                </div>
            </section>
        </div>
    </c:forEach>


    <!--경기일정 팝업-->
    <c:forEach items="${cupTeamList}" var="cupTeam">
        <div class="schPopup" id="schPopup${cupTeam.team_no}">
            <section class="schInfo">
                <span class="closeBtn" onclick="closePopup(schPopup)">x</span>
                <table>
                    <caption>
                        <span></span>
                        기본정보
                    </caption>
                    <tr>
                        <th>지점</th>
                        <td>시흥점</td>
                    </tr>
                    <tr>
                        <th>경기일자</th>
                        <td>2021.04.25(월) 21:30 C구장</td>
                    </tr>
                </table>

                <table>
                    <caption>
                        <span></span>
                        경기기록
                    </caption>
                    <tr>
                        <th>팀 스피드러너(1)</th>
                        <th>팀명</th>
                        <th>team 동그라미(2)</th>
                    </tr>
                    <tr>
                        <td><input class="schSelect" type="text" value="백태양 (1쿼터/5')"></td>
                        <th>득점현황</th>
                        <td>
                            <input class="schSelect" type="text" value="주영웅 (2쿼터/6')">
                        </td>
                    </tr>
                    <tr>
                        <td><input class="schSelect" type="text" value="0"></td>
                        <th>경고</th>
                        <td><input class="schSelect" type="text" value="0"></td>
                    </tr>
                    <tr>
                        <td><input class="schSelect" type="text" value="0"></td>
                        <th>퇴장</th>
                        <td><input class="schSelect" type="text" value="0"></td>
                    </tr>
                </table>

                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('schPopup')">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('schPopup')">
                </div>
            </section>
        </div>
    </c:forEach>

    <!--사용자 팝업-->
    <c:forEach items="${cupTeamList}" var="cupTeam">
        <div class="userPopup" id="userPopup${cupTeam.team_no}">
            <section class="userInfo">
                <span class="closeBtn" onclick="closePopup(userPopup)">x</span>
                <h2>사용자 정보</h2>
                <table class="mgrUserInfo">
                    <tr>
                        <th>이름${cupTeam.team_no}</th>
                        <td><input class="schSelect" type="text" value="사용자1"></td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td><input class="schSelect" type="text" value="010-0101-0101"></td>
                    </tr>
                    <tr>
                        <th>ID</th>
                        <td><input class="schSelect" type="text" value="id123"></td>
                    </tr>
                    <tr>
                        <th>PW</th>
                        <td><input class="schSelect" type="text" value="pw123"></td>
                    </tr>
                </table>

                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('userPopup${cupTeam.team_no}')">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('userPopup${cupTeam.team_no}')">
                </div>

            </section>
        </div>
    </c:forEach>

    <!--경기일정추가 팝업-->
    <div class="schAddPopup" id="schAddPopup">
        <section class="schAddInfo">
            <span class="closeBtn" onclick="closePopup(schAddPopup)">x</span>
            <h2>경기일정 추가</h2>
            <table class="mgrSchAddInfo">
                <tr>
                    <th>지점</th>
                    <td>
                        <form action="#">
                            <select class=schSelect name="" id="" required>
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
                        </form>
                    </td>
                </tr>
                <tr>
                    <th>팀 명 (1)</th>
                    <td>
                        <form action="#">
                            <select class=schSelect name="" id="" required>
                                <option value>팀1 선택</option>
                                <option value>스피드러너</option>
                                <option value>동그라미</option>
                                <option value>3</option>
                            </select>
                        </form>
                    </td>
                </tr>
                <tr>
                    <th>팀 명 (2)</th>
                    <td>
                        <form action="#">
                            <select class=schSelect name="" id="" required>
                                <option value>팀2 선택</option>
                                <option value>팀1 선택</option>
                                <option value>스피드러너</option>
                                <option value>동그라미</option>
                                <option value>3</option>
                            </select>
                        </form>
                    </td>
                </tr>
                <tr>
                    <th>경기일자</th>
                    <td><input class="schSelect" type="date"></td>
                </tr>
                <tr>
                    <th>경기시간</th>
                    <td>
                        <form action="#">
                            <select class=schSelect name="" id="" required>
                                <option value>경기시간 선택</option>
                                <option value>18:00</option>
                                <option value>20:00</option>
                                <option value>22:00</option>
                            </select>
                        </form>
                    </td>
                </tr>
                <tr>
                    <th>구장</th>
                    <td>
                        <form action="#">
                            <select class=schSelect name="" id="" required>
                                <option value>구장 선택</option>
                                <option value>A구장</option>
                                <option value>B구장</option>
                                <option value>C구장</option>
                            </select>
                        </form>
                    </td>
                </tr>
            </table>

            <div class="mgrBtn">
                <input type="button" class="okAddBtn" value="추가" onclick="okBtnPop('schAddPopup')">
                <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('schAddPopup')">
            </div>

        </section>
    </div>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>