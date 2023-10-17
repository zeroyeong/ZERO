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
   <link rel="stylesheet" href="<c:url value="/resources/css/zCup.css?adfsd" />" />
   <link rel="stylesheet" href="<c:url value="/resources/css/tournament.css" />" />

   <!-- js 연결 -->
   <script src="<c:url value="/resources/js/zCup.js?xdwdd" />" defer></script>
   <script src="<c:url value="/resources/js/zCupURL.js" />" defer></script>

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
          <source src="resources/videos/point.mp4" type="video/mp4" />
        </video>
      </div>
      <!-- subMenu include -->
 	  <jsp:include page="../include/zCupScheduleList.jsp" />
      <input type="hidden" id="loginCheck" value="${sessionScope.mem_name}"/>
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
              <form:form id="teamForm" modelAttribute = "NewTeam" method="post" action="zCup/cupTeam" enctype="multipart/form-data">
              <h3 class="formTitle"><span></span>팀 등록</h3>
              <div class="formDiv">
                <div class="bothSide">
                  <div>
                    <label>지점명</label>
                    <form:select path="branch_no">
	                    <c:forEach var="branch" items="${branch_List}">
	                      <form:option value="${branch.branch_no}">${branch.branch_name}</form:option>
						</c:forEach>
                    </form:select>
                  </div>
                  <div>
                    <label>팀명</label>
                    <form:input id="team_name" path="team_name" autocomplete="off"/>
                  </div>
                </div>

                <div class="bothSide">
                  <div>
                    <label>팀관리자</label>
                    <form:input type="text" path="team_leader" value="${sessionScope.mem_name}" readonly="true" autocomplete="off"/>
                  </div>
                  <div>
                    <label>연락처</label>
                      <form:input id="team_phone" type="text" path="team_phone" autocomplete="off"/>
                  </div>
                </div>
                <div>
                  <label>이메일</label>
                  <form:input id="team_mail" type="text" path="team_mail" autocomplete="off"/>
                </div>
                <div>
                  <label>선수 사진</label>
                  <div class="search">
                    <input type="text" class="fileName" placeholder="이미지를 업로드 하세요" readonly>
                    <input type="file" id="fileInput" name="leader_photo" />
                    <label for="fileInput">찾아보기</label>
                  </div>
                </div>
                <div class="bothSide">
                  <div>
                    <label>유니폼(홈)</label>
                    <div class="harlfInput">
                      <form:input id="team_uniform_home" type="text" path="team_uniform_home" placeholder="유니폼 색" autocomplete="off"/>
                    </div>
                  </div>
                  <div>
                    <label>유니폼(어웨이)</label>
                    <div class="harlfInput">
                      <form:input id="team_uniform_away" type="text" path="team_uniform_away" placeholder="유니폼 색" autocomplete="off"/>
                    </div>
                  </div>
                </div>
                <div>
                  <label>팀엠블럼</label>
                  <div class="search">
                    <input type="text" class="fileName2" placeholder="이미지를 업로드 하세요" readonly>
                    <form:input type="file" id="fileInput2" path="emblem_file" />
                    <label for="fileInput2">찾아보기</label>
                  </div>
                </div>
                <div class="bothSide">
                  <div>
                    <label>팀비밀번호</label>
                    <form:input type="password" id="pwd1" path="team_password" placeholder="비밀번호를 입력해주세요."/>
                  </div>
                  <div>
                    <label>팀비밀번호 확인</label>
                    <form:input type="password" id="pwd2" path="" />
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
            <form:form id="playerForm" modelAttribute = "NewPlayer" method="post" action="zCup/cupPlayer" enctype="multipart/form-data">
              <h3 class="formTitle"><span></span>선수 등록</h3>
              <div class="formDiv">
                <div class="bothSide">
                  <div>
                    <label>팀코드 입력</label>
                    <div class="inpuBtn">
                      <input type="text" id="teamCodeInput" autocomplete="off"/>
                      <input type="hidden" id="teamCodeOk" value="noCheck">
                      <button type="button" onclick="okReser()">코드확인</button>
                    </div>
                  </div>
                  <div>
                    <label>팀비밀번호</label>
                    <input type="password" id="team_pwd" />
                    <form:input type="hidden" id="player_team_pwd" path=""/>   
                  </div>
                </div>
                <div class="bothSide">
                  <div>
                    <label>팀명</label>
                    <input type="text" id="player_team_name" placeholder="팀코드 입력" readonly/>
                  </div>
                  <div>
                    <label>지점명</label>
                    <input type="text" id="player_branch_name" placeholder="팀코드 입력" readonly/>
                    <form:input type="hidden" id="player_team_no" path="team_no"/>                
                  </div>
                </div>
                <div>
                  <label>선수명</label>
                  <form:input type="text" path="player_name" value="${sessionScope.mem_name}" readonly="true" autocomplete="off"/>
                </div>
                <div>
                  <label>선수사진</label>
                  <div class="search">
                    <input type="text" class="fileName3"  placeholder="이미지를 업로드 하세요" readonly>
                    <form:input type="file" id="fileInput3" path="photo_file"/>
                    <label for="fileInput3">찾아보기</label>
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
       		<c:forEach items="${cupTeamList}" var="cupTeam">  
              <tr>
                <td>${cupTeam.team_no}</td>
                <td>${cupTeam.branch.branch_name}</td>
                <td>
                  <div class="teamName">
                    <div class="teamImage">
                      <img src="${pageContext.request.contextPath}/resources/images/${cupTeam.team_emblem}" alt="" />
                    </div>
                    <div class="teamTitle">
                   			<a href="<c:url value="/zCup/teamDetail?team_no=${cupTeam.team_no}" />">${cupTeam.team_name}</a>
                    </div>
                  </div>
                </td>
                <td><span>${cupTeam.team_member_cnt}</span> 명</td>
                <td>${cupTeam.team_reg_year}</td>
                <td><button type="button" class="teamBtn" onclick="teamSetting(${cupTeam.team_no})">팀관리</button></td>
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
             	<c:forEach var="cupTeamList" items="${cupTeamList}" varStatus="cnt" begin="0" end="3">
             	<c:set var="groupCnt" value="${groupCnt + 1}" />
                <div class="teamGroup1 group${groupCnt}">
					<img src="${pageContext.request.contextPath}/resources/images/${cupTeamList.team_emblem}" alt=""/>
                  <a href="">${cupTeamList.team_name}</a>
                </div>
              	</c:forEach>  
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
             	<c:forEach var="cupTeamList" items="${cupTeamList}" varStatus="cnt" begin="4" end="7">
             	<c:set var="groupCnt" value="${groupCnt + 1}" />
                <div class="teamGroup1 group${groupCnt}">
					<img src="${pageContext.request.contextPath}/resources/images/${cupTeamList.team_emblem}" alt=""/>
                  <a href="">${cupTeamList.team_name}</a>
                </div>
              	</c:forEach>  
              </div>
            </div>
          </section>
          <section class="zCupSchedule">
            <h3><span>z-cup</span> Schedule</h3>
            <div class="zCup">
              <c:forEach items="${cupScheduleList}" var="cupSchedule">
              <c:set var="listNum" value="${listNum + 1}" />
              <ul>
                <li class="place">${cupSchedule.branch.branch_name}</li>
                <li class="playInfo">
                  <div>
                 	<span>${cupSchedule.schedule_date}</span>
                    <span>${cupSchedule.schedule_time}</span>
                  </div>
                  <span>${cupSchedule.schedule_location}</span>
                </li>
                <li class="team leftTeam">
                  <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_home_team.team_no}" />">
                  	${cupSchedule.cup_home_team.team_name}
                  </a>
                  <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_home_team.team_no}" />">
                    <img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_home_team.team_emblem}" alt=""/>
                  </a>
                </li>       
                <li class="score">${cupSchedule.schedule_home_goal} : ${cupSchedule.schedule_away_goal}</li>
                <li class="team rightTeam">
                  <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_away_team.team_no}" />">
  				    <img src="${pageContext.request.contextPath}/resources/images/${cupSchedule.cup_away_team.team_emblem}" alt=""/>
                  </a>
                  <a href="<c:url value="/zCup/teamDetail?team_no=${cupSchedule.cup_away_team.team_no}" />">
                 	${cupSchedule.cup_away_team.team_name}
                  </a>
                </li>
                <li class="button">
                  <label for="play${listNum}" class="playButton" onclick="showPlayInfo(this)"
                    >경기정보 <span></span
                  ></label>
                </li>
              </ul>        
              <input type="checkbox" name="" id="play${listNum}" />
              <label for="play${listNum}" class="cover play${listNum}"></label>
              <section class="play${listNum} playInfo">
                <label for="play${listNum}" class="closeBtn">×</label>
                <table>
                  <caption>
                    <span></span>
                    기본정보
                  </caption>
                  <tr>
                    <th>지점</th>
                    <td>${cupSchedule.branch.branch_name}</td>
                  </tr>
                  <tr>
                    <th>경기일자</th>
                    <td>${cupSchedule.schedule_date} ${cupSchedule.schedule_time} ${cupSchedule.schedule_location}</td>
                  </tr>
                </table>
                <table>
                  <caption>
                    <span></span>
                    경기기록
                  </caption>
                  <tr>
                    <th>${cupSchedule.cup_home_team.team_name}</th>
                    <th>팀명</th>
                    <th>${cupSchedule.cup_away_team.team_name}</th>
                  </tr>
                  <tr>
                    <td>${cupSchedule.detail.detail_home_goal}</td>
                    <th>득점현황</th>
                    <td>
                      ${cupSchedule.detail.detail_away_goal}
                    </td>
                  </tr>
                  <tr>
                    <td>${cupSchedule.detail.detail_home_yellow_card}</td>
                    <th>경고</th>
                    <td>${cupSchedule.detail.detail_away_yellow_card}</td>
                  </tr>
                  <tr>
                    <td>${cupSchedule.detail.detail_home_red_card}</td>
                    <th>퇴장</th>
                    <td>${cupSchedule.detail.detail_away_red_card}</td>
                  </tr>
                </table>
              </section>
              </c:forEach>
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
               <c:forEach items="${player_rank_list}" var="cupPlayer" begin="0" end="19" step="1">
               <c:set var="rankNum" value="${rankNum + 1}" />
                <tr>
                  <td><span class="rank">${rankNum}</span></td>
                  <td>
                    <div class="player">
                      <span class="img">
                        <img src="${pageContext.request.contextPath}/resources/images/${cupPlayer.player_photo}" alt="" />
                      </span>
                      <span class="name">${cupPlayer.player_name}</span>
                    </div>
                  </td>
                  <td>${cupPlayer.cup_team.team_name}</td>
                  <td>${cupPlayer.player_games}</td>
                  <td>${cupPlayer.player_goal}</td>
                  <td>${cupPlayer.player_yellow_card}</td>
                  <td>${cupPlayer.player_red_card}</td>
                </tr>
                </c:forEach>               
              </tbody>
            </table>
          </section>
        </article>
      </div>
    </main>

    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
    
<script type="text/javascript">
    var cupTeamNo = [];
    var cupTeamCode = [];
    var cupTeamName = [];
    var cupBranch = [];
    var cupTeamPwd =[];
    var teamCodeCheck = false;
	var teamNum = 0;
	var player_team_name  = document.getElementById("player_team_name");
	var player_branch_name = document.getElementById("player_branch_name");
	var player_team_no = document.getElementById("player_team_no");
	var player_team_pwd = document.getElementById("player_team_pwd");
	var teamCodeOk = document.getElementById("teamCodeOk");
	
    <c:forEach items="${cupTeamList}" var="cupTeam">    	
    	cupTeamNo.push("${cupTeam.team_no}");
    	cupTeamCode.push("${cupTeam.team_code}");
    	cupTeamName.push("${cupTeam.team_name}");
    	cupBranch.push("${cupTeam.branch.branch_name}");
    	cupTeamPwd.push("${cupTeam.team_password}");
    </c:forEach>
    
    function okReser() {
        let message;
    	var teamCodeInput = document.getElementById("teamCodeInput").value;
    	
    	if(teamCodeInput == ""){
    		message ="팀코드를 입력해 주세요";
    		alert(message);
    	}else{
    		for(var i=0; i<cupTeamCode.length; i++){
        		if(teamCodeInput == cupTeamCode[i]){
        			teamCodeCheck = true;
        			teamNum = i;
        		}
        	}
    		
    		if(teamCodeCheck){
    			message ="팀코드 확인";
    			player_team_no.value = cupTeamNo[teamNum];
    			player_team_name.value = cupTeamName[teamNum];
    			player_branch_name.value = cupBranch[teamNum];	
    			player_team_pwd.value = cupTeamPwd[teamNum];
    			refreshSection('addTeam');
    			teamCodeOk.value = "check";
        		//alert(message);
    		}else{
    			message ="등록된 팀코드가 아닙니다. 다시 확인 바랍니다.";
    			teamCodeOk.value = "noCheck";
        		alert(message);
    		}
    	}       
    }
    
    function refreshSection(sectionId) {
        const section = document.getElementById(sectionId);
        section.innerHTML = section.innerHTML; // 섹션 내용을 갱신
    }    
    
</script>
</body>
</html>