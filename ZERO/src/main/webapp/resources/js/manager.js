const reserPopup = document.getElementById("reserPopup");
const schPopup = document.getElementById("schPopup");
const userPopup = document.getElementById("userPopup");
const teamPopup = document.getElementById("teamPopup");
const schAddPopup = document.getElementById("schAddPopup");

function openPopup(popup) {
    popup.style.display = "block";
}

function closePopup(popup) {
    popup.style.display = "none";
}

function openReserPopup(num) {
	const reserPopup = document.getElementById(`reserPopup${num}`);
    openPopup(reserPopup);
}

function openTeamPopup(num) {
    const teamPopup = document.getElementById(`teamPopup${num}`);
    openPopup(teamPopup);
}

function openSchPopup(num) {
    const schPopup = document.getElementById(`schPopup${num}`);
    openPopup(schPopup);
}

function openUserPopup(num) {
    const userPopup = document.getElementById(`userPopup${num}`);
    openPopup(userPopup);
}

function openPlayerPopup(num) {
  const playerPopup = document.getElementById(`playerPopup${num}`);
    openPopup(playerPopup);
}

function closeReserPopup() {
    closePopup(reserPopup);
}

function closeTeamPopup(num) {
    const teamPopup = document.getElementById(`teamPopup${num}`);
    closePopup(teamPopup);
}

function closeSchPopup(num) {
    const schPopup = document.getElementById(`schPopup${num}`);
    closePopup(schPopup);
}

function closeUserPopup(num) {
    const userPopup = document.getElementById(`userPopup${num}`);
    closePopup(userPopup);
}

function closePlayerPopup(num) {
    const playerPopup = document.getElementById(`playerPopup${num}`);
    closePopup(playerPopup);
}

function openSchAddPopup(){
	const schAddPopup = document.getElementById('schAddPopup');
    openPopup(schAddPopup);
}

function closeSchAddPopup() {
    closePopup(schAddPopup);
}

//섹션 새로고침 처리
function refreshSection(sectionId) {
    const section = document.getElementById(sectionId);
}

function okBtnPop(popupId, num) {
    let message;

    switch (popupId) {
        case 'teamPopup':
            message = "팀 정보가 수정 처리 되었습니다.";
            var updateTeamForm = document.getElementById(`updateTeamForm${num}`);
  			updateTeamForm.submit(); 
            closeTeamPopup(num);
            refreshSection('mgrTeamContent');
            break;
        case 'playerPopup':
            message = "선수 정보가 수정 처리 되었습니다.";
            closePlayerPopup(num);
            //location.reload();
            var playerForm = document.getElementById(`playerForm${num}`);
  			playerForm.submit(); 
            break;
        case 'reserPopup':
            message = "예약 승인 처리 되었습니다.";
            closePopup(reserPopup);
            refreshSection('mgrReserContent');
            break;
        case 'schPopup':
            message = "경기 일정 수정 처리 되었습니다.";
            var scheduleGoalForm = document.getElementById(`scheduleGoalForm${num}`);
  			scheduleGoalForm.submit(); 
            closeSchPopup(num);
            refreshSection('mgrSchContent');
            break;
        case 'schDetailPopup':
            message = "경기 일정 수정 처리 되었습니다.";
            var scheduleDetailForm = document.getElementById(`scheduleDetailForm${num}`);
  			scheduleDetailForm.submit(); 
            closeSchPopup(num);
            refreshSection('mgrSchContent');
            break;    
        case 'userPopup':
            message = "사용자 정보 수정 처리 되었습니다.";
            var updateMgrMember = document.getElementById(`updateMgrMember${num}`);
  			updateMgrMember.submit();  
            closeUserPopup(num);
            refreshSection('mgrUserContent');
            break;
        case 'schAddPopup':
            message = "경기일정이 추가 되었습니다.";
			var scheduleForm = document.getElementById('scheduleForm');
  			scheduleForm.submit();           
            closePopup(schAddPopup);
            refreshSection('mgrSchContent');
            break;
        default:
            message = "알 수 없는 팝업 ID입니다.";
            break;
    }

    alert(message);
}


function cancelBtnPop(popupId, num) {
    let message;

    switch (popupId) {
        case 'teamPopup':
            message = "팀 정보가 수정 취소처리 되었습니다.";
            closeTeamPopup(num);
            refreshSection('mgrTeamContent');
            break;
        case 'playerPopup':
            message = "선수 정보가 수정 취소처리 되었습니다.";
            closePlayerPopup(num);
            location.reload();
            break;
        case 'reserPopup':
            message = "예약 취소 처리 되었습니다."; 
            closeReserPopup();
            refreshSection('mgrReserContent');
            break;
        case 'schPopup':
            message = "경기 일정 수정 취소 처리 되었습니다.";
            closeSchPopup(num);
            refreshSection('mgrSchContent');
            break;
        case 'schDetailPopup':
            message = "경기 일정 수정 취소 처리 되었습니다.";
            closeSchPopup(num);
            refreshSection('mgrSchContent');
            break;    
        case 'userPopup':
            message = "사용자 정보 수정 취소 처리 되었습니다.";
            closeUserPopup(num);
            refreshSection('mgrUserContent');
            break;
        case 'schAddPopup':
            message = "경기일정이 추가 취소 되었습니다.";
            closeSchAddPopup();
            refreshSection('mgrSchContent');
            break;
        default: 
            message = "알 수 없는 팝업 ID입니다.";
            break;
    }
    alert(message);
}

//schedule 
function deleteSchedule(schedule_no){
	const response = confirm("삭제 하시겠습니까?");

	if(response){
		location.href = 'manager/deleteSchedule?schedule_no=' + schedule_no;
	}	
}

function playerDelete(player_no, team_no){
	const response = confirm("퇴출 하시겠습니까?");

	if(response){
		location.href = 'playerDelete?player_no=' + player_no +'&team_no=' + team_no;
	}	
}

function teamDelete(team_no){
	const response = confirm("삭제 하시겠습니까?");

	if(response){
		location.href = 'manager/deleteTeam?team_no=' + team_no;
	}	
}

function cancel(reNo) {
    if (confirm("예약을 취소하시겠습니까?")) {
        document.getElementById(`cancelForm${reNo}`).submit();
        alert("예약을 취소했습니다.");
    } else {
        alert("취소되었습니다.");
    }
}
