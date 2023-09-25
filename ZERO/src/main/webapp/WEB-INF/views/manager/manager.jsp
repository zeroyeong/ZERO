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

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
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
                <input type="radio" name="detailRadio" id="detailTeamRadio" checked />
                <input type="radio" name="detailRadio" id="detailPlayerRadio" />

                <ul class="addButton">
                    <li>
                        <label for="detailTeamRadio">팀 관리</label>
                    </li>
                    <li>
                        <label for="detailPlayerRadio">선수 관리</label>
                    </li>
                </ul>

                <section id="addTeamContent">
                    <table>
                        <thead>
                            <tr>
                                <th class="col1">순번</th>
                                <th class="col2">지점명</th>
                                <th class="col3">팀명</th>
                                <th class="col4">등록선수</th>
                                <th class="col5">등록년도</th>
                                <th class="col6">관리</th>
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
                                <td><span>0</span> 명</td>
                                <td>2023.09.08</td>
                                <td><a class="teamBtn" onclick="openTeamPopup()">수정</a></td>
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
                                <td><span>0</span> 명</td>
                                <td>2023.09.08</td>
                                <td><a class="teamBtn" onclick="openTeamPopup()">수정</a></td>
                            </tr>
                        </tbody>
                    </table>
                </section>

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
                                <th class="col9">관리</th>
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
                                <td><a class="playerBtn" onclick="openPlayerPopup()">수정</a></td>
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
                                <td><a class="playerBtn" onclick="openPlayerPopup()">수정</a></td>
                            </tr>
                        </tbody>
                    </table>
                </section>
            </section>

            <section id="mgrSchContent" class="mgrPage">
                <input type="button" value="경기일정추가" class="schAddBtn" onclick="openSchAddPopup()">
                <div class="mgrSch">
                    <ul>
                        <li class="place">시흥점</li>
                        <li class="playInfo">
                            <div>
                                <span>04.26(월)</span>
                                21:30
                            </div>
                            <span>C구장</span>
                        </li>
                        <li class="team leftTeam">
                            <a href="teamDetail.html">팀 스피드러너</a>
                            <a href="teamDetail.html">
                                <img src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg" alt="" />
                            </a>
                        </li>
                        <li class="score">1 : 2</li>
                        <li class="team rightTeam">
                            <a href="teamDetail.html">
                                <img src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg" />
                            </a>
                            <a href="teamDetail.html">team 동그라미</a>
                        </li>
                        <li class="button">
                            <a class="schBtn" onclick="openSchPopup()">수정</a>
                        </li>
                    </ul>
                </div>
                <div class="mgrSch">
                    <ul>
                        <li class="place">시흥점</li>
                        <li class="playInfo">
                            <div>
                                <span>04.26(월)</span>
                                21:30
                            </div>
                            <span>C구장</span>
                        </li>
                        <li class="team leftTeam">
                            <a href="teamDetail.html">팀 스피드러너</a>
                            <a href="teamDetail.html">
                                <img src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg" alt="" />
                            </a>
                        </li>
                        <li class="score">1 : 2</li>
                        <li class="team rightTeam">
                            <a href="teamDetail.html">
                                <img src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg" />
                            </a>
                            <a href="teamDetail.html">team 동그라미</a>
                        </li>
                        <li class="button">
                            <a class="schBtn" onclick="openSchPopup()">수정</a>
                        </li>
                    </ul>
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
                        <tr>
                            <td>1</td>
                            <td>사용자1</td>
                            <td>010-0101-0101</td>
                            <td>id123</td>
                            <td>pw123</td>
                            <td><a class="userBtn" onclick="openUserPopup()">수정</a></td>
                        </tr>
                    </tbody>
                </table>
                <form action="" class="search-form">
                    <select name="" id="">
                        <option value="">제목</option>
                    </select>
                    <input type="text">
                    <button type="button" class="searchButton">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
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
            <span class="closeBtn" onclick="closePopup()">x</span>
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
    <div class="teamPopup" id="teamPopup">
        <section class="teamInfo">
            <span class="closeBtn" onclick="closePopup()">x</span>
            <h2>팀 정보</h2>
            <table class="mgrTeamInfo">
                <tr>
                    <th>지점</th>
                    <td>더피치 평택점</td>
                </tr>
                <tr>
                    <th>팀명</th>
                    <td>팀1</td>
                </tr>
                <tr>
                    <th>등록선수</th>
                    <td>0명</td>
                </tr>
            </table>

            <div class="mgrBtn">
                <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('teamPopup')">
                <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('teamPopup')">
            </div>

        </section>
    </div>

    <!--선수관리 팝업-->
    <div class="playerPopup" id="playerPopup">
        <section class="playerInfo">
            <span class="closeBtn" onclick="closePopup()">x</span>
            <h2>예약 정보</h2>
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

    <!--경기일정 팝업-->
    <div class="schPopup" id="schPopup">
        <section class="schInfo">
            <span class="closeBtn" onclick="closePopup()">x</span>
            <h2>경기 일정관리</h2>
            <div class="mgrSchInfo">
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
                        <th>컵 명</th>
                        <td>그날 리그 그 그날리그</td>
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
                        <td>백태양 (1쿼터/5')</td>
                        <th>득점현황</th>
                        <td>
                            장승연 (1쿼터/6')
                            <br />
                            주영웅 (2쿼터/6')
                        </td>
                    </tr>
                    <tr>
                        <td>0</td>
                        <th>경고</th>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>0</td>
                        <th>퇴장</th>
                        <td>0</td>
                    </tr>
                </table>

                <div class="mgrBtn">
                    <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('schPopup')">
                    <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('schPopup')">
                </div>
            </div>
        </section>
    </div>

    <!--사용자 팝업-->
    <div class="userPopup" id="userPopup">
        <section class="userInfo">
            <span class="closeBtn" onclick="closePopup()">x</span>
            <h2>사용자 정보</h2>
            <table class="mgrUserInfo">
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
                <input type="button" class="okBtnPop" value="확인" onclick="okBtnPop('userPopup')">
                <input type="button" class="cancelBtnPop" value="취소" onclick="cancelBtnPop('userPopup')">
            </div>

        </section>
    </div>

    <!--경기일정추가 팝업-->
    <div class="schAddPopup" id="schAddPopup">
        <section class="schAddInfo">
            <span class="closeBtn" onclick="closePopup()">x</span>
            <h2>경기일정 추가</h2>
            <table class="mgrSchAddInfo">
                <tr>
                    <th>지점</th>
                    <td>시흥점</td>
                </tr>
                <tr>
                    <th>컵 명</th>
                    <td>zCup</td>
                </tr>
                <tr>
                    <th>경기일자</th>
                    <td>2023.09.25(월) 21:00 A구장</td>
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