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
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/reservation.css"/>">

    <!-- js 연결-->
    <script src="<c:url value="/resources/js/resInfo.js?123"/>" defer></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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

        <input type="radio" id="reservation" checked />
        <ul class="harlfButton">
            <li><label for="reservation">예약</label></li>
            <li><label><a href="<c:url value="../branch/reservation"/>">예약확인</a></label></li>
        </ul>
        <div class="container">
            <h1>예약</h1>
            <div class="reserWrap">
                <div class="conLeft">
                    <div class="leftImg">
                        <span class="img">
                            <img src="<c:url value="/resources/images/${branch.branch_pic}"/>" alt="" width="584px">
                        </span>
                        <p class="name">${branch.branch_name}</p>
                    </div>
                    <div class="leftInfo">
                        <p class="tit">유의사항</p>
                        <ul>
                            <li><span class="red-bg">${branch.branch_name} 잔디 전면교체 완료</span></li>
                            <li><span class="yellow-bg">풋살공, 팀조끼 무료 대여, 풋살화 유료 대여</span></li>
                            <li><span class="blue-bg">"월정기대관" 신청시 1회 10% 할인 적용</span></li>
                        </ul>
                        <ol type="1">
                            <li>1. 예약신청 후 2시간 내에 입금되지 않을 시 자동 취소</li>
                            <p>* 당일예약은 예약 후 바로 입금 필수</p>
                            <p>* 예약자와 입금자 이름이 다를 경우 전화문의 필수</p>
                            <p>- 입금 계좌 : 국민은행 318037-04-005799 예금주 : ${branch.branch_name}</p>
                            <p>- 입금 확인 전화 :${branch.branch_tell} (가능시간 : 10:00 ~ 18:00)</p>
                            <li>2. 문의 전화 : ${branch.branch_tell}</li>
                            <li>3. 행사 목적 대관 신청 사전 문의 필수</li>
                            <li>4. 전 구역 금연 <small>(흡연구역 준수, 경기장내 흡연 적발 시 대관 취소 및 환불 불가)</small></li>
                            <li>5. 경기장 내 음료 및 음식물 반입 금지</li>
                            <li>6. 주차는 옥상층 주차장을 이용</li>
                            * 주차등록 필수, 미등록시 발생한 주차요금은 책임지지 않음
                            <li>7. 현금영수증 발행 가능 (예약후 문의전화)</li>
                            <li>8. 상시 CCTV 촬영 중</li>
                            <li>9. 분실물은 본인 책임</li>
                            <li>10. 야간 대관 이용 시 소음 관련 민원이 발생 할 수 있음, 고성, 욕설 금지</li>
                            <li>11. 부상 발생시 치료는 본인 개인 부담</li>
                        </ol>

                        <p class="tit">환불규정</p>
                        <ol type="1">
                            <li>1. 대관 예약 취소 및 변경은 아래의 규정에 따라 가능합니다.</li>
                            <li>2. 대관 당일에는 취소 및 변경이 불가합니다.</li>
                            <li>3. 대관 예약 취소 규정</li>
                            <p>- 5일 전 : 100% 환불</p>
                            <p>- 4일 전 : 70% 환불</p>
                            <p>- 3일 전 : 50% 환불</p>
                            <p>- 2일 전 ~ 당일 : 환불 불가</p>
                            <li>4. 대관 예약 날짜변경은 3일 전까지 가능합니다.</li>
                            <li>5. 당일 취소 및 변경은 천재지변으로 인한 경우에만 100% 환불 및 날짜변경이 가능합니다.</li>
                            <p>(호우주의보/경보, 대설주의보/경보, 태풍주의보/경보만 해당)</p>
                            <li>6. 대관 날짜, 시간 변경 및 취소는 1회에 한해 가능합니다.</li>
                        </ol>
                    </div>
                </div>
                <div class="conRight">
                    <!--달력-->
                    <div class="calenderWrap">
                        <table class="calendar">
                            <thead>
                                <tr>
                                    <td onClick="prevCalendar();" style="cursor: pointer;">&#60;</td>
                                    <td colspan="5"><span id="calYear"></span>년 <span id="calMonth"></span>월</td>
                                    <td onClick="nextCalendar();" style="cursor: pointer;">&#62;</td>
                                </tr>
                                <tr>
                                    <td class="sundayRed">일</td>
                                    <td>월</td>
                                    <td>화</td>
                                    <td>수</td>
                                    <td>목</td>
                                    <td>금</td>
                                    <td>토</td>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>      
                    <form:form modelAttribute = "reservation" action="${branch.branch_code}/reservation" method="post">       
                    <div class="rightInfo">
                        <div class="infoDiv">
                            <span class="tit">날짜 선택</span>
                            <span class="date"></span>
                        </div>   
                        <div class="infoDiv">
                            <span class="tit">구장 선택</span>
                            <span class="subTit">* 구장을 선택해야 시간이 표출됩니다.</span>
                            <span class="select">
                                <label for="selectStadium">구장을 선택해주세요</label>
                                <i class="fa-solid fa-caret-down"></i>
                                <form:select path="re_stadium">
                                    <option>구장 선택</option>
                                    <form:option value="1">A구장 (크기:40X20)</form:option>
                                    <form:option value="2">B구장 (크기:40X20)</form:option>
                                </form:select>
								</div>
                            </span>
                        </div>
                        <div class="infoDiv">
                            <span class="tit">시간 선택</span>
                            <span class="subTit">* 다중 선택이 가능 합니다.</span>
                            <div class="timeTable" id="buttonContainer">
                                <ul>
                                <br>
                                <div id="timeButton">

                                </div>
                                </ul>
                            </div>
                        </div>
                        <div class="infoDiv">
                            <span class="tit">합계</span>
                            <span class="total"><b><span id="totalPrice">0</span>원</b></span>
                        </div>
                        <div class="infoDiv">
                            <input type="checkbox" class="matchCheck">
                            <span class="tit">매치 등록하기</span>
                            <br>
                            <span class="subTit">* 매치를 등록하면 경기를 희망하는 팀의 연락을 받을 수 있습니다.</span>
                            <div id="matchForm" class="matchList">
                                <ul>
                                    <li>
                                        <span class="select">
                                            <label for="mat01">매치형태 선택</label>
                                            <select name="mat01" id="mat01">
                                                <option value>매치형태 선택</option>
                                                <option value="5vs5">5 vs 5</option>
                                                <option value="6vs6">6 vs 6</option>
                                            </select>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="select">
                                            <label for="mat02">신청 가능 팀 선택</label>
                                            <select name="mat02" id="mat02">
                                                <option value>신청 가능 팀 선택</option>
                                                <option value="1">1팀</option>
                                                <option value="2">2팀</option>
                                            </select>
                                        </span>
                                    </li>
                                    <li>
                                        <span class="select">
                                            <label for="mat03">매치형태 선택</label>
                                            <select name="mat03" id="mat03">
                                                <option value>팀수준선택</option>
                                                <option value="1">상</option>
                                                <option value="2">중상</option>
                                                <option value="3">중</option>
                                                <option value="4">중하</option>
                                                <option value="5">하</option>
                                            </select>
                                        </span>
                                    </li>
                                    <li>
                                        <div class="uniColor">
                                            <span>유니폼 색상</span>
                                            <input type="text" title name="uniColorTop" placeholder="상의색">
                                            <span></span>
                                            <input type="text" title name="uniColorTop" placeholder="하의색">
                                            <span></span>
                                            <input type="text" title name="uniColorTop" placeholder="스타킹색">
                                            <span></span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="textarea">
                                            <textarea name="" id=""
                                                placeholder="원하는 매칭시간 / 개인 연락처 / 팀 소개등 메모"></textarea>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="resUserInfo">
                            <p class="name">대관 예약자 정보 입력</p>
                            <table>
                                <colgroup>
                                    <col style="width: 25%;" />
                                    <col />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row">신청자</th>
                                        <td>
                                            <form:input type="text" path="re_name" placeholder="이름을 입력하세요"
                                                style="width:100%"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">연락처</th>
                                        <td>
                                            <div class="phone">
                                                <form:input path="re_tel1" type="text" maxlength="3" />
                                                <span>-</span>
                                                <form:input path="re_tel2" type="text" maxlength="4" />
                                                <span>-</span>
                                                <form:input path="re_tel3" type="text" maxlength="4" />
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th scope="row">비밀번호</th>
                                        <td><form:input type="password" path="re_pwd" placeholder="예약확인시 필요합니다."
                                                style="width:100%"/></td>
                                    </tr>

                                    <tr>
                                        <th scope="row" id="reservationDateHeader">예약일자</th>
                                        <td id="reservationDateCell"></td>
                                        <form:hidden path="re_date"/>
                                    </tr>
                                    <tr>
                                   		<form:hidden path="re_branch" value="${branch.branch_no}" />
                                        <th scope="row" id="stadium">선택구장</th>
                                        <td id="stadiumSelect"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">예약시간</th>
                                        <td id="time">예약시간 선택 없음</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" id="total">총 결제금액</th>
                                        <td><span class="price" id="totalPay">0</span>원</td>
                                        <form:hidden path="re_totalpay"/>
                                    </tr>
                                    <tr>
                                        <th scope="row">메모</th>
                                        <td>
                                            <form:input path="re_memo" class="infoMemo" type="text"
                                                placeholder="원하는 매칭시간 / 개인 연락처 / 팀 소개등 메모"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <span class="check">
                                <input type="checkbox" id="chk01" required>
                                <label for="chk01">예약자 정보 및 환불규정/주의사항을 모두 확인 했습니다.</label>
                            </span>

                            <div class="reserInfoBtnBox">
                                <button class="reserInfoBtn">
                                    <span>대관예약하기</span>
                                </button>
                            </div>  
                        </div>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />

</body>

</html> 
<script>
$(document).ready(function() {
    $("#re_stadium").change(function() {
        var reStadium = $("#re_stadium").val();
        var reBranch = $("#re_branch").val();
        var reDate = $("#re_date").val();

        $.ajax({
            type: "POST",
            url: `${branch.branch_code}/timeCheck`,
            data: {
            	re_stadium: reStadium,
            	re_branch: reBranch,
            	re_date: reDate
            },
            dataType: "json",
            success: function(response) {
                var timeList = response.timeList;
                var $timeButton = $("#timeButton");
                $timeButton.empty();

                $.each(timeList, function(index, item) {
                    var TIME_NO = item.time_no;
                    var TIME_START = item.time_start;
                    var TIME_END = item.time_end;

                    var html = '<li><button type="button" onclick="setTime(this);">' + TIME_START + ' ~ ' + TIME_END + 
                        '<br>80000원 <input type="hidden" id="restime" value="' + TIME_START + ' ~ ' + TIME_END + '"> ' +
                        '<input type="checkbox" style="display: none;" name="re_time" id="re_time" value="' + TIME_NO + '" alt="80000" class="time_check"/>' +
                        '</button></li>';
                    $timeButton.append(html);
                });
            },
            error: function() {
                alert("오류가 발생했습니다.");
            }
        });
    });
});
</script>