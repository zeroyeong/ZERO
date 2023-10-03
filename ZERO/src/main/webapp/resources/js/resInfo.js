document.addEventListener("DOMContentLoaded", function () {
    const selectPoint = document.getElementById("pointSelect");
    const labelSelectPoint = document.querySelector('label[for="pointSelect"]');

    selectPoint.addEventListener("change", function () {
        const selectedOption = selectPoint.options[selectPoint.selectedIndex];
        labelSelectPoint.textContent = selectedOption.textContent;
    });
});

/*달력*/
window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행

let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
let today = new Date();     // 페이지를 로드한 날짜를 저장
today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

// 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
function buildCalendar() {

    let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
    let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날
    let todayColumn; // 오늘날

    let tbody_Calendar = document.querySelector(".calendar > tbody");
    document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
    document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신

    while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
        tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
    }

    let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

    for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
        let nowColumn = nowRow.insertCell();        // 열 추가
    }

    for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {  // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

        let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
        nowColumn.innerText = leftPad(nowDay.getDate());      // 추가한 열에 날짜 입력


        if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
            nowColumn.style.color = "#DC143C";
        }
        if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
            nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
        }

        if (nowDay < today) {
            nowColumn.className = "pastDay";
        }
        else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) {
            nowColumn.className = "today choiceDay"; // 오늘인 경우 choiceDay 클래스 추가
            nowColumn.onclick = function () { choiceDate(this); }
            todayColumn = nowColumn; // 오늘 날짜 열을 저장
        }
        else {
            nowColumn.className = "futureDay";
            nowColumn.onclick = function () { choiceDate(this); }
        }
    }

    // 오늘 날짜에 대한 업데이트 수행
    updateSelectedDate(getFormattedDate(todayColumn));
}

// 날짜 선택
function choiceDate(nowColumn) {
    if (nowColumn.classList.contains("choiceDay")) { // 이미 선택된 날짜인 경우
        nowColumn.classList.remove("choiceDay"); // 선택을 해제합니다.
        updateSelectedDate(""); // 날짜를 선택 해제할 때 내용을 비웁니다.
    } else {

        // 다른 선택된 날짜가 있는지 확인하고 있으면 선택을 해제합니다.
        let selectedDates = document.querySelectorAll(".choiceDay");
        for (let i = 0; i < selectedDates.length; i++) {
            selectedDates[i].classList.remove("choiceDay");
        }
        nowColumn.classList.add("choiceDay"); // 새로운 날짜를 선택합니다.
        updateSelectedDate(getFormattedDate(nowColumn)); // 선택된 날짜를 업데이트합니다.
    }
}

// 선택된 날짜를 업데이트하는 함수 
function updateSelectedDate(dateString) {
    const dateSpan = document.querySelector(".date");
    dateSpan.innerText = dateString;

    // <th>와 <td>에 대한 참조 가져오기
    const reservationDateHeader = document.getElementById("reservationDateHeader");
    const reservationDateCell = document.getElementById("reservationDateCell");
    const re_dateInput = document.getElementById("re_date"); // input 엘리먼트 가져오기

    // <td> 내용 업데이트
    reservationDateCell.innerText = dateString;
    re_dateInput.value = dateString; // input의 value 속성 설정
}

// 선택된 날짜를 형식에 맞게 가져오는 함수
function getFormattedDate(nowColumn) {
    const year = nowMonth.getFullYear();
    const month = leftPad(nowMonth.getMonth() + 1); // 월은 0부터 시작하므로 1을 더해줍니다.
    const day = leftPad(nowColumn.innerText);

    return `${year}-${month}-${day}`; 
} 

// 이전달 버튼 클릭
function prevCalendar() {
    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
    buildCalendar();    // 달력 다시 생성
}
// 다음달 버튼 클릭
function nextCalendar() {
    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
    buildCalendar();    // 달력 다시 생성
}

// input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
function leftPad(value) {
    return String(value).padStart(2, '0');
}

const selectStadium = document.getElementById("re_stadium");
const labelSelectStadium = document.querySelector('label[for="selectStadium"]');
const stadiumSelect = document.getElementById("stadiumSelect");
const rsStadiumInput = document.getElementById("rs_stadium");

selectStadium.addEventListener("change", function () {
    const selectedOption = selectStadium.options[selectStadium.selectedIndex];
    labelSelectStadium.textContent = selectedOption.textContent;
    stadiumSelect.textContent = selectedOption.textContent;

    // 선택한 값으로 rs_stadium input 엘리먼트의 값을 설정
    rsStadiumInput.value = selectedOption.value;
});


function setTime(e) {
    var timeCheck = e.parentElement.querySelector(".time_check");
    var restime = e.querySelector("#restime").value; 
    
    if (timeCheck.checked) {
        e.classList.remove("on");
        timeCheck.checked = false;
        updateSelectedTimes(); 
    } else {
        e.classList.add("on");
        timeCheck.checked = true;
        updateSelectedTimes();
    }
    updateTotalPay();
}

function updateSelectedTimes() {
    var selectedTimes = []; 
    
    var checkboxes = document.querySelectorAll(".time_check");
    checkboxes.forEach(function (checkbox) {
        if (checkbox.checked) {
            var restime = checkbox.parentElement.querySelector("#restime").value;
            selectedTimes.push(restime);
        }
    });

    var timeElement = document.getElementById("time");
    if (selectedTimes.length > 0) {
        timeElement.innerHTML = selectedTimes.join("<br>");
    } else {
        timeElement.textContent = "예약시간 선택 없음";
    }
}

function updateTotalPay() {
    var totalPaySpan = document.getElementById("totalPay");
    var totalPriceSpan = document.getElementById("totalPrice");
    var reTotalPayInput = document.getElementById("re_totalpay"); // 추가한 부분
    var checkboxes = document.querySelectorAll(".time_check");
    var totalPay = 0;

    checkboxes.forEach(function (checkbox) {
        if (checkbox.checked) {
            totalPay += parseInt(checkbox.getAttribute("alt"));
        }
    });

    totalPaySpan.textContent = totalPay.toLocaleString();
    totalPriceSpan.textContent = totalPay.toLocaleString();
    reTotalPayInput.value = totalPay.toLocaleString(); // re_totalpay 요소에 값 추가
};