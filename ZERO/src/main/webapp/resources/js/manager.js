const reserPopup = document.getElementById("reserPopup");
const teamPopup = document.getElementById("teamPopup");
const playerPopup = document.getElementById("playerPopup");
const schPopup = document.getElementById("schPopup");
const userPopup = document.getElementById("userPopup");
const schAddPopup = document.getElementById("schAddPopup");

//팝업 여닫기
function openPopup(popup) {
    popup.style.display = "block";
}

function closePopup(popup) {
    popup.style.display = "none";
}

//오픈 팝업 아이디
function openReserPopup() {
    openPopup(reserPopup);
}

function openPlayerPopup() {
    openPopup(playerPopup);
}

function openTeamPopup(index) {
    const popupId = `teamPopup${index}`;
    const teamPopup = document.getElementById(popupId);
    openPopup(teamPopup);
}

function openSchPopup() {
    const popupId = `schPopup${index}`;
    const teamPopup = document.getElementById(popupId);
    openPopup(schPopup);
}

function openUserPopup() {
    const popupId = `userPopup${index}`;
    const teamPopup = document.getElementById(popupId);
    openPopup(userPopup);
}

function openSchAddPopup() {
    openPopup(schAddPopup);
}

//닫힘 팝업 아이디
function closeReserPopup() {
    closePopup(reserPopup);
}

function closePlayerPopup() {
    closePopup(playerPopup);
}

function closeTeamPopup() {
    closePopup(teamPopup);
}

function closeSchPopup() {
    closePopup(schPopup);
}

function closeUserPopup() {
    closePopup(userPopup);
}

function closeSchAddPopup() {
    closePopup(schAddPopup);
}

//클릭 이벤트 설정
document.querySelector(".popUp").addEventListener("click", openReserPopup);
document.querySelector(".playerBtn").addEventListener("click", openPlayerPopup);
document.querySelector(".teamBtn").addEventListener("click", openTeamPopup);
document.querySelector(".schBtn").addEventListener("click", openSchPopup);
document.querySelector(".userBtn").addEventListener("click", openUserPopup);
document.querySelector(".schAddBtn").addEventListener("click", openSchAddPopup);

document.querySelector("#reserPopup .closeBtn").addEventListener("click", closeReserPopup);
document.querySelector("#playerPopup .closeBtn").addEventListener("click", closePlayerPopup);
document.querySelector("#teamPopup .closeBtn").addEventListener("click", closeTeamPopup);
document.querySelector("#schPopup .closeBtn").addEventListener("click", closeSchPopup);
document.querySelector("#userPopup .closeBtn").addEventListener("click", closeUserPopup);
document.querySelector("#schAddPopup .closeBtn").addEventListener("click", closeSchAddPopup);

// 예약 승인 처리
function refreshSection(sectionId) {
    const section = document.getElementById(sectionId);
    section.innerHTML = section.innerHTML; // 섹션 내용을 갱신
}

function okBtnPop(popupId , num) {
    let message;
console.log("popupId="+popupId);
    switch (popupId) {
        case 'teamPopup':
            message = "팀 정보가 수정 처리 되었습니다.";
            closeTeamPopup();
            refreshSection('mgrTeamContent');
            break;
        case 'playerPopup':
            message = "선수 정보가 수정 처리 되었습니다.";
            closePlayerPopup();
            location.reload();
            break;
        case 'reserPopup':
            message = "예약 승인 처리 되었습니다.";
            closeReserPopup();
            refreshSection('mgrReserContent');
            break;
        case 'schPopup':
            message = "경기 일정 수정 처리 되었습니다.";
            closeSchPopup();
            refreshSection('mgrSchContent');
            break;
        case 'userPopup':
            message = "사용자 정보 수정 처리 되었습니다.";
            closeUserPopup();
            refreshSection('mgrUserContent');
            break;
        case 'schAddPopup':
            message = "경기일정이 추가 되었습니다.";
            closeSchAddPopup();
            refreshSection('mgrSchContent');
            break;
        default:
            message = "알 수 없는 팝업 ID입니다.";
            break;
    }

    alert(message);
}

// 예약 취소 처리
function cancelBtnPop(popupId) {
    let message;
console.log("popupId="+popupId);
    switch (popupId) {
        case 'teamPopup'+'popupId':
            message = "팀 정보가 수정 취소처리 되었습니다.";
            closeTeamPopup();
            refreshSection('mgrTeamContent');
            break;
        case 'playerPopup':
            message = "선수 정보가 수정 취소처리 되었습니다.";
            closePlayerPopup();
            location.reload();
            break;
        case 'reserPopup':
            message = "예약 취소 처리 되었습니다.";
            closeReserPopup();
            refreshSection('mgrReserContent');
            break;
        case 'schPopup':
            message = "경기 일정 수정 취소 처리 되었습니다.";
            closeSchPopup();
            refreshSection('mgrSchContent');
            break;
        case 'userPopup':
            message = "사용자 정보 수정 취소 처리 되었습니다.";
            closeUserPopup();
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