let popup = document.getElementById("reserPopup");
let closeBtn = document.querySelector(".closePopBtn");

//팝업 여닫기
function openPopup() {
    popup.style.display = "block";
}

function closePopup() {
    popup.style.display = "none";
}

let popUpElements = document.querySelectorAll(".popUp");
popUpElements.forEach(function (trigger) {
    trigger.addEventListener("click", function () {
        openPopup();
    });
});

// 예약 승인 처리
function okReser() {
    alert("예약 승인 처리 되었습니다.");
    closePopup();
    window.location.reload();
}

// 예약 취소 처리
function cancelReser() {
    alert("예약 취소 처리 되었습니다.");
    closePopup();
    window.location.reload();
}