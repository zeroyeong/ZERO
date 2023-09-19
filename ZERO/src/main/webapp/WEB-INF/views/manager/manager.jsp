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
                <ul class="pagination">
                    <li>1</li>
                    <li>2</li>
                </ul>
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
                                <td><a href="#" class="teamBtn">수정</a></td>
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
                                <td><a href="#" class="teamBtn">수정</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="pagination">
                        <li>1</li>
                        <li>2</li>
                    </ul>
                </section>

                <section id="addPlayerContent">
                </section>
            </section>

            <section id="mgrSchContent" class="mgrPage">
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
                        <tr>
                            <td>1</td>
                            <td>경기일정</td>
                            <td>2023.09.13</td>
                            <td>승인</td>
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

            <section id="mgrUserContent" class="mgrPage">
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
                        <tr>
                            <td>1</td>
                            <td>사용자관리</td>
                            <td>2023.09.13</td>
                            <td>승인</td>
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
                <input type="button" class="okReser" value="확인" onclick="okReser()">
                <input type="button" class="cancelReser" value="취소" onclick="cancelReser()">
            </div>

        </section>
    </div>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html>