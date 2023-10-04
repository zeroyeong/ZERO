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
    <link rel="stylesheet" href="<c:url value="/resources/css/point.css?123"/>">

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
                <source src="<c:url value="/resources/videos/point.mp4"/>" type="video/mp4" />
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
                                <li><a href="<c:url value="/branch/HM0048"/>">더피치 인하점</a></li>
                                <li><a href="<c:url value="/branch/HM0053"/>">더피치 평택점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>대전, 충청 지역</a>
                            <ul class="areaList">
                                <li><a href="<c:url value="/branch/HM0049"/>">더피치 천안신방점</a></li>
                                <li><a href="<c:url value="/branch/HM0052"/>">아산인주풋살장</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>부산, 경상 지역</a>
                            <ul class="areaList">
                                <li><a href="<c:url value="/branch/HM0031"/>">부산 북구점</a></li>
                                <li><a href="<c:url value="/branch/HM0008"/>">울산 남구점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>광주, 전라 지역</a>
                            <ul class="areaList">
                                <li><a href="<c:url value="/branch/HM0010"/>">전주 완산점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>제주 지역</a>
                            <ul class="areaList">
                                <li><a href="<c:url value="/branch/HM0032"/>">제주 서귀포점</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="locateWrap">
            <h1>${branch.branch_name}</h1>

            <div class="viewWrap">
                <h4 class="hBar">지점안내</h4>

                <div class="imgWrap">
                    <span class="img">
                        <img src="<c:url value="/resources/images/${branch.branch_pic}"/>" alt="" />
                    </span>
                    </ul>

                    <div class="floatWrap">
                        <div class="floatLeft">
                            <p class="tit">지점주소</p>
                            <p class="txt">${branch.branch_address}</p>
                        </div>
                        <div class="floatRight">
                            <p class="tit">문의전화</p>
                            <p class="txt">${branch.branch_tell} (10:00 ~ 24:00) </p>
                        </div>
                    </div>
                </div>

                <h4 class="hBar">위치안내</h4>
                <div class="locationInfo">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3235.0420751510387!2d127.14797831566766!3d35.82344338016132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3570236652613385%3A0xe1f9897c157ec867!2z7ZmI7ZSM65-s7IqkIOyghOyjvOyZhOyCsOygkA!5e0!3m2!1sko!2skr!4v1535966706212"
                        width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <p><span><i class="fa-solid fa-location-dot"></i>${branch.branch_address}</span></p>
                </div>

                <h4 class="hBar">구장안내</h4>
                <div>
                    <div class="cahrgeTable">
                        <table>
                            <colgroup>
                                <col style="width:30%" />
                                <col style="width:40%" />
                                <col style="width:30%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">구분</th>
                                    <th scope="col">구장명</th>
                                    <th scope="col">국제풋살규격(m)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>실외 구장</td>
                                    <td>A 구장</td>
                                    <td>40X20</td>
                                </tr>
                                <tr>
                                    <td>실외 구장</td>
                                    <td>B 구장</td>
                                    <td>40X20</td>
                                </tr>
                                <tr>
                                    <td>실외 구장</td>
                                    <td>GATORADE 구장</td>
                                    <td>40X20</td>
                                </tr>
                                <tr>
                                    <td>실외 구장</td>
                                    <td>C 구장</td>
                                    <td>15X12</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <h4 class="hBar">대관요금 안내 </h4>
                <div>
                    <div class="chargeBox">
                        <p class="tit">GATORADE 구장 (실외) (40m X 20m)</p>
                        <div class="cahrgeTable">
                            <table>
                                <colgroup>
                                    <col style="width:50%" span="2" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">시간</th>
                                        <th scope="col">대관요금</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>평일주간 (10:00~18:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>평일야간 (18:00~24:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>주말,공휴일 주간 (10:00~18:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>주말, 공휴일 야간(18:00~24:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="chargeBox">
                        <p class="tit">B구장 (실외) (40m X 20m)</p>

                        <div class="cahrgeTable">
                            <table>
                                <colgroup>
                                    <col style="width:50%" span="2" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">시간</th>
                                        <th scope="col">대관요금</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>평일주간 (10:00~18:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>평일야간 (18:00~24:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>주말,공휴일 주간 (10:00~18:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                    <tr>
                                        <td>주말, 공휴일 야간(18:00~24:00)</td>
                                        <td>80,000원 (2시간)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <h4 class="hBar">유의사항</h4>
                <div class="list_wrap">
                    <ul>
                        <li><span class="red-bg">${branch.branch_name } 잔디 전면교체 완료</span></li>
                        <li><span class="yellow-bg">풋살공, 팀조끼 무료 대여, 풋살화 유료 대여</span></li>
                        <li><span class="blue-bg">"월정기대관" 신청시 1회 10% 할인 적용</span></li>
                    </ul>
                    <ol type="1">
                        <li>1. 예약신청 후 2시간 내에 입금되지 않을 시 자동 취소</li>
                        <li>* 당일예약은 예약 후 바로 입금 필수</li>
                        <li>* 예약자와 입금자 이름이 다를 경우 전화문의 필수</p>
                        <li><b>- 입금 계좌 : 국민은행 318037-04-005799 예금주 : ${branch.branch_name}</b></li>
                        <li>- 입금 확인 전화 : ${branch.branch_tell} (가능시간 : 10:00 ~ 18:00)</li>
                        <li><b>2. 문의 전화 : ${branch.branch_tell}</b></li>
                        <li>3. 행사 목적 대관 신청 사전 문의 필수</li>
                        <li>4. 전 구역 금연 <small>(흡연구역 준수, 경기장내 흡연 적발 시 대관 취소 및 환불 불가)</small></li>
                        <li>5. 경기장 내 음료 및 음식물 반입 금지</li>
                        <li><b>6. 주차는 옥상층 주차장을 이용</b></li>
                        <li>* 주차등록 필수, 미등록시 발생한 주차요금은 책임지지 않음</b>
                        <li>7. 현금영수증 발행 가능 (예약후 문의전화)</li>
                        <li>8. 상시 CCTV 촬영 중</li>
                        <li>9. 분실물은 본인 책임</li>
                        <li>10. 야간 대관 이용 시 소음 관련 민원이 발생 할 수 있음, 고성, 욕설 금지</li>
                        <li>11. 부상 발생시 치료는 본인 개인 부담</li>
                    </ol>
                </div>

                <h4 class="hBar">환불규정</h4>
                <div class="list_wrap">
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
        </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>

</html>