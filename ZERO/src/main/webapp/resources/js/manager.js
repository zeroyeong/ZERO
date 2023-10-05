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

function openReserPopup() {
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

function openSchAddPopup() {
    openPopup(schAddPopup);
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
            closeTeamPopup(num);
            refreshSection('mgrTeamContent');
            break;
        case 'playerPopup':
            message = "선수 정보가 수정 처리 되었습니다.";
            closePlayerPopup(num);
            location.reload();
            break;
        case 'reserPopup':
            message = "예약 승인 처리 되었습니다.";
            closePopup(reserPopup);
            refreshSection('mgrReserContent');
            break;
        case 'schPopup':
            message = "경기 일정 수정 처리 되었습니다.";
            closeSchPopup(num);
            refreshSection('mgrSchContent');
            break;
        case 'userPopup':
            message = "사용자 정보 수정 처리 되었습니다.";
            closeUserPopup(num);
            refreshSection('mgrUserContent');
            break;
        case 'schAddPopup':
            message = "경기일정이 추가 되었습니다.";
            closePopup(schAddPopup);
            refreshSection('mgrSchContent');
			var scheduleForm = document.getElementById('scheduleForm');
  			scheduleForm.submit();           
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
function scheduleDelete(schedule_no){
	const response = confirm("삭제 하시겠습니까?");

	if(response){
		location.href = 'manager/scheduleDelete?schedule_no=' + schedule_no;
	}	
}
