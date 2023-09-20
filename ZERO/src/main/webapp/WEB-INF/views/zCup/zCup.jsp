<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<html lang="ko">
<head>
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Z-CUP</title>

   <!-- css 연결 -->
   <link rel="stylesheet" href="<c:url value="/resources/css/common.css" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/zCup.css" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css" />" />

   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/zCup.js?ssd" />" defer></script>
   <script src="<c:url value="/resources/js/tournament.js?ad" />" defer></script>

   <!-- Font Awesome -->
   <script src="https://kit.fontawesome.com/1a03dd2ba1.js" crossorigin="anonymous"></script>
   
   <!-- 아이콘 -->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>

   <!-- googleFont -->
</head>
<body>
  <!-- header include -->
  <jsp:include page="../include/header.jsp" />
  
    <main>
      <div class="topVideo">
        <h2>Z-CUP</h2>
        <video id="video2" autoplay playsinline loop muted>
          <source src="../videos/point.mp4" type="video/mp4" />
        </video>
      </div>
      <!-- subMenu include -->
 	  <jsp:include page="../include/zCupScheduleList.jsp" />
      
      <div class="container">
        <h1 id="zCupTitle">Z-CUP 전체 현황</h1>

        <input type="radio" name="menuBtn" id="zCupInfo" />
        <input type="radio" name="menuBtn" id="teamAdd" />
        <input type="radio" name="menuBtn" id="teamList" />
        <input type="radio" name="menuBtn" id="zCupAllView" checked />
        <ul class="menuBtn">
          <li>
            <label for="zCupInfo" id="zCupInfo">
              <i class="fa-solid fa-futbol"></i>
              Z-CUP소개
            </label>
          </li>

          <li>
            <label for="zCupAllView" id="zCupAllView">
              <i class="fa-solid fa-futbol"></i>
              Z-CUP 전체현황
            </label>
          </li>

          <li>
            <label for="teamAdd" id="teamAdd">
              <i class="fa-solid fa-people-group"></i>
              팀/선수 등록
            </label>
          </li>
          <li>
            <label for="teamList" id="teamList">
              <i class="fa-solid fa-people-line"></i>
              팀리스트
            </label>
          </li>
          
        </ul>

        <section id="zCupInfo">
          <div class="post">
            <img
              src="http://www.hmfutsalpark.com/files/competition/1049202308234899007.png"
              alt=""
            />

            <p>
              [ 참가신청 방법 ]<br />
              <br />
              <span class="highright">GATORADE CUP</span><br />
              <br />
              대회 참가를 위해서는 본 사이트에<br />
              <br />
              <span class="highright">팀등록</span>이 선행되어야 합니다<br />
              <br />
              아래 참가신청방법을 다운로드 후 안내에 따라 등록 부탁드립니다<br />
              <br />
              ※작년(2022년) H-CUP 참가팀들의 경우 별도의 팀등록은 필요없습니다
              <br />
              <br />
              (선수 수정만 해주시면됩니다)<br />
              <br />
              이전대회 참가팀들중 본 대회 참가를 위해 선수수정을 원하시는 경우
              아래 운영본부 연락처로 연락주시기바랍니다.<br />
              <br />
              <span class="hotPink">
                대회 신청전에 모집개요 및 대회규정집 정독 부탁드립니다
              </span>
              <br />

              내용 미숙지에 따른 불이익이 발생하지않도록 꼭 정독 부탁드립니다<br />
              <br />
              <span class="bold">
                <참가비 입금계좌> <br />
                <br />
                513-031333-04-028 (기업은행) / 예금주 : 주식회사 에이치엔에스<br />
                <br />
                ※ 대회운영본부 : 02-332-7807<br />
                <br />
                ※ 문의가능 시간 : 09~18시<br />
                <br />
                해당 시간 외 문의는 인스타(@hmfutsalpark.official) DM을 통해
                문의주시기바랍니다.<br />
                <br />
                <대회장소 안내><br />
                <br />
                시흥예선 : 경기도 시흥시 정왕대로 233번길 19-1 HM풋살파크
                시흥점<br />
                <br />
                평택예선 : 경기도 평택시 비전3로 167-41 더피치 평택점 <br />
                <br />
                서울예선 : 서울특별시 동대문구 천호대로 133 홈플러스 동대문점
                옥상층(7F) HM풋살파크 동대문점 <br />
                <br />
                창원예선 : 경상남도 창원시 의창구 창원대로 415 홈플러스 창원점
                옥상층(7F) HM풋살파크 창원점 <br />
                <br />
                천안예선 : 충청남도 천안시 동남구 신촌1길 23 홈플러스 천안신방점
                옥상층(7F) 더피치 천안신방점 <br />
                <br />
                부산예선 : 부산광역시 북구 금곡대로 469 농협하나로클럽
                옥상층(5F) HM풋살파크 부산북구점 <br />
                <br />
                울산예선 : 울산광역시 북구 신답로 26 홈플러스 울산북구점
                옥상층(5F) HM풋살파크 울산북구점 <br />
                <br />
                전주예선 : 전라북도 전주시 완산구 기린대로 170 홈플러스
                전주완산점 옥상층(7F) HM풋살파크 전주완산점 <br />
                <br />
                전국 챔피언십 : 경기도 시흥시 정왕대로 233번길 19-1 HM풋살파크
                시흥점
              </span>
            </p>

            <div class="download">
              <div class="down1">
                <p>대회 모집개요 다운로드</p>
                <span class="highright">대회 모집개요 DOWN</span>
              </div>
              <div class="down2">
                <p>대회 모집개요 다운로드</p>
                <span class="highright">대회 규정집 DOWN</span>
              </div>
              <div class="down3">
                <p>대회 참가신청방법 다운로드</p>
                <span class="highright">대회 참가신청방법 DOWN</span>
              </div>
            </div>
          </div>
        </section>
        <section id="teamAdd">		 
			<p>player!!!!</p>
			
			
			<c:forEach items="${cupPlayerList}" var="cupPlayer"> 
			<p>playerNo = ${cupPlayer.playerNo}</p>
			<p>playerName = ${cupPlayer.playerName}</p>
			<p>playerPhoto = ${cupPlayer.playerPhoto}</p>
		   	<p>playerGoal = ${cupPlayer.playerGoal}</p>
   			<p>playerYellowCard = ${cupPlayer.playerYellowCard}</p>
  	 	   	<p>playerRedCard = ${cupPlayer.playerRedCard}</p>
			</c:forEach>	
			
          <ul class="addButton">
            <li>
              <label for="addTeam" id="selectMenuBtn" class="addTeam active">
                팀등록
              </label>
            </li>
            <li>
              <label for="addPlayer" id="selectMenuBtn" class="addPlayer">
                선수등록
              </label>
            </li>
          </ul>
          <input type="radio" name="addLeague" id="addTeam" checked />
          <input type="radio" name="addLeague" id="addPlayer" />

          <section class="addTeam">
              <form:form id="teamForm" modelAttribute = "NewTeam" method="post" action="zCup/cupTeam">
              <h3 class="formTitle"><span></span>팀 등록</h3>
              <div class="formDiv">
                <div class="bothSide">
                  <div>
                    <label>지점명</label>
                    <select name="" >
                      <option value="">지점선택</option>
                      <option value="">서울</option>
                      <option value="">경기</option>
                    </select>
                  </div>
                  <div>
                    <label>팀명</label>
                    <form:input path="teamName"/>
                  </div>
                </div>

                <div class="bothSide">
                  <div>
                    <label>팀관리자</label>
                    <form:input type="text" path="teamLeader"/>
                  </div>
                  <div>
                    <label>연락처</label>
                      <form:input type="text" path="teamPhone"/>
                  </div>
                </div>
                <div>
                  <label>이메일</label>
                  <form:input type="text" path="teamMail" />
                </div>
                <div class="bothSide">
                  <div>
                    <label>유니폼(홈)</label>
                    <div class="harlfInput">
                      <form:input type="text" path="teamUniformHome" placeholder="유니폼 색" />
                    </div>
                  </div>
                  <div>
                    <label>유니폼(어웨이)</label>
                    <div class="harlfInput">
                      <form:input type="text" path="teamUniformAway" placeholder="유니폼 색" />
                    </div>
                  </div>
                </div>
                <div>
                  <label>팀엠블럼</label>
                  <div class="search">
                    <form:input type="text" class="fileName" path="teamEmblem" value="이미지를 업로드 하세요"/>
                    <input type="file" id="fileInput">
                    <label for="fileInput">찾아보기</label>
                  </div>
                </div>
                <div class="bothSide">
                  <div>
                    <label>팀비밀번호</label>
                    <form:input type="new-password" id="pwd1" path="teamPassWord" placeholder="5자 이상으로 입력해주세요."/>
                  </div>
                  <div>
                    <label>팀비밀번호 확인</label>
                    <form:input type="new-password" id="pwd2" path="teamPassWordCheck" />
                  </div>
                </div>
              </div>
              <div class="buttons">
                <button type="button" class="registrationBtn" onclick="teamAdd()">등록하기</button>
                <button type="button" class="resetBtn">취소하기</button>
              </div>
            </form:form>
          </section>
          <section class="addPlayer">
            <form:form id="playerForm" modelAttribute = "NewPlayer" method="post" action="zCup/cupPlayer">
              <h3 class="formTitle"><span></span>선수 등록</h3>
              <div class="formDiv">
                <div class="bothSide">
                  <div>
                    <label>팀코드 입력</label>
                    <div class="inpuBtn">
                      <input type="text" id="teamCodeInput"/>
                      <button type="button" onclick="okReser('test2')">코드확인</button>
                    </div>
                  </div>
                  <div>
                    <label>팀비밀번호</label>
                    <input type="text" />
                  </div>
                </div>
                <div class="bothSide">
                  <div>
                    <label>팀명</label>
                    <input type="text" name=""  readonly />
                  </div>
                  <div>
                    <label>지점명</label>
                    <input type="text" name=""  readonly />
                  </div>
                </div>
                <div>
                  <label>선수명</label>
                  <form:input type="text" path="playerName" readonly="true"/>
                </div>
                <div>
                  <label>선수사진</label>
                  <div class="search">
                    <form:input type="text" class="fileName2" path="playerPhoto" value="이미지를 업로드 하세요" />
                    <input type="file" id="fileInput2">
                    <label for="fileInput2">찾아보기</label>
                  </div>
                </div>
              </div>
              <div class="buttons">
                <button type="button" class="registrationBtn" onclick="playerAdd()">등록하기</button>
                <button type="button" class="resetBtn">취소하기</button>
              </div>
            </form:form>
          </section>
        </section>
        <section id="teamList">
          <form action="">
            <span class="searchIcon">
              <i class="fa-solid fa-magnifying-glass"></i>
            </span>
            <div class="searchBox">
              <div class="selectBox">
                <select name=""  class="leagueType">
                  <option value="">전체</option>
                </select>
                <select name=""  class="areaList">
                  <option value="">전국현황</option>
                </select>
              </div>
              <div class="searchInputBox">
                <input type="text" placeholder="팀명을 입력하세요." />
                <button type="button">
                  검색
                  <span>
                    <i class="fa-solid fa-magnifying-glass"></i>
                  </span>
                </button>
              </div>
            </div>
          </form>
          <table>
            <thead>
              <tr>
                <th class="col1">순번</th>
                <th class="col2">지점명</th>
                <th class="col4">팀명</th>
                <th class="col5">등록선수</th>
                <th class="col6">등록년도</th>
                <th class="col7">관리</th>
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
                <td><a href="teamSetting.html" class="teamBtn">팀관리</a></td>
              </tr>
              
       		<c:forEach items="${cupTeamList}" var="cupTeam"> 
              <tr>
                <td>1</td>
                <td>더피치 평택점</td>
                <td>
                  <div class="teamName">
                    <div class="teamImage">
                      <img src="../images/팀2.jpg" alt="" />
                    </div>
                    <div class="teamTitle">
                      <a href="">${cupTeam.teamName}</a>
                    </div>
                  </div>
                </td>
                <td><span>${cupTeam.teamMemberCnt}</span> 명</td>
                <td>${cupTeam.teamRegYear}</td>
                <td><a href="teamSetting.html" class="teamBtn">팀관리</a></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
          <ul class="pagination"></ul>
        </section>

        <article class="zCupAll">
          <section class="tonerment">
            <h3><span>Z-CUP</span> 2023</h3>

            <div class="tonerment">
              <div class="teamGroup">
                <div class="teamGroup1 group1">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group2">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group3">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group4">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
              </div>

              <div class="lineGroup lineGroup1">
                <div class="line line1">
                  <span></span>
                </div>
                <div class="line line2">
                  <span></span>
                </div>
                <div class="line line3">
                  <span></span>
                </div>
                <div class="line line4">
                  <span></span>
                </div>
              </div>
              <div class="bigLine bigLine1">
                <span></span>
              </div>
              <div class="logo">zero Futsal</div>
              <div class="bigLine bigLine2">
                <span></span>
              </div>
              <div class="lineGroup lineGroup2">
                <div class="line line1">
                  <span></span>
                </div>
                <div class="line line2">
                  <span></span>
                </div>
                <div class="line line3">
                  <span></span>
                </div>
                <div class="line line4">
                  <span></span>
                </div>
              </div>
              <div class="teamGroup">
                <div class="teamGroup1 group1">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group2">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group3">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
                <div class="teamGroup1 group4">
                  <img src="../images/팀1.jpg" alt="" />
                  <a href="">팀 이름 1</a>
                </div>
              </div>
            </div>
          </section>
          <section class="zCupSchedule">
            <h3><span>z-cup</span> Schedule</h3>
            <div class="zCup">
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
                    <img
                      src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg"
                      alt=""/>
                    </a>
                </li>
                <li class="score">1 : 2</li>
                <li class="team rightTeam">
                  <a href="teamDetail.html">
                    <img
                      src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg"
                    />
                  </a>
                  <a href="teamDetail.html">team 동그라미</a>
                </li>
                <li class="button">
                  <label for="play1" class="playButton"
                    >경기정보 <span></span
                  ></label>
                </li>
              </ul>
              <input type="checkbox" name="" id="play1" />
              <label for="play1" class="cover"></label>
              <section class="play1 playInfo">
                <label for="play1" class="closeBtn">×</label>
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
              </section>
            </div>
          </section>

          <section class="playerRanking">
            <table class="playerRanking">
              <caption>
                <span>PLAYER </span>
                RANKING
              </caption>

              <colgroup>
                <col class="col1" />
                <col class="col2" />
                <col class="col3" />
                <col class="col4" />
                <col class="col5" />
                <col class="col6" />
                <col class="col7" />
              </colgroup>

              <thead>
                <tr>
                  <th>순위</th>
                  <th>이름</th>
                  <th>소속팀</th>
                  <th>출전</th>
                  <th>득점</th>
                  <th>경고</th>
                  <th>퇴장</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><span class="rank">1</span></td>
                  <td>
                    <div class="player">
                      <span class="img">
                        <img src="../images/person.png" alt="" />
                      </span>
                      <span class="name">홍길동</span>
                    </div>
                  </td>
                  <td>팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">2</span></td>
                  <td>
                    <div class="player">
                      <span class="img">
                        <img src="../images/person.png" alt="" />
                      </span>
                      <span class="name">홍길동</span>
                    </div>
                  </td>
                  <td>팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">3</span></td>
                  <td>
                    <div class="player">
                      <span class="img">
                        <img src="../images/person.png" alt="" />
                      </span>
                      <span class="name">홍길동</span>
                    </div>
                  </td>
                  <td>팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
              </tbody>
            </table>
          </section>
        </article>
      </div>
    </main>
	
    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
</body>
</html>