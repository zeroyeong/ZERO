const btn = document.querySelectorAll("#selectMenuBtn");

btn.forEach((t) => {
  t.addEventListener("click", (e) => {
    const target = e.currentTarget;

    btn.forEach((t) => t.classList.remove("active"));
    target.classList.add("active");
  });
});

// PAGE TITLE CHANGE
const zCupTitle = document.getElementById("zCupTitle");
const playBtn = document.querySelector("label#zCupInfo");
const addBtn = document.querySelector("label#teamAdd");
const listbtn = document.querySelector("label#teamList");
const allBtn = document.querySelector("label#zCupAllView");

playBtn.addEventListener("click", function () {
  zCupTitle.innerText = "Z-CUP 소개";
});

addBtn.addEventListener("click", function () {
  zCupTitle.innerText = "팀/선수 등록";
});

listbtn.addEventListener("click", function () {
  zCupTitle.innerText = "팀리스트";
});

allBtn.addEventListener("click", function () {
  zCupTitle.innerText = "Z-CUP 전체 현황";
});

// TEAM LIST pagination
const showTr = 30;
const totalTr = document.querySelectorAll("tbody tr").length;
const totalPage = Math.ceil(totalTr / showTr);
const pages = document.querySelector(".pagination");

// pagination button 생성
for (let i = 1; i <= totalPage; i++) {
  pages.innerHTML += `<li>${i}</li>`;
}

const page = document.querySelectorAll(".pagination li");

page.forEach((t, idx) => {
  t.addEventListener("click", () => {
    for (p of page) {
      p.classList.remove("active");
    }
    displayTr(idx);
  });
});

function displayTr(idx) {
  const trArray = document.querySelectorAll("tbody tr");

  let start = idx * showTr;
  let end = start + showTr;

  let trArray1 = [...trArray];
  for (ta1 of trArray1) {
    ta1.style.display = "none";
  }

  let showTrArray = trArray1.slice(start, end);
  for (st of showTrArray) {
    st.style.display = "";
  }

  page[idx].classList.add("active");
}

displayTr(0);

const upload_file = document.querySelector("#fileInput");
const upload_name = document.querySelector(".fileName");

upload_file.addEventListener("input", () => {
  if (isImage(upload_file.files[0])) {
    changeVal(upload_name, upload_file.files[0].name);
  }
});

const upload_file2 = document.querySelector("#fileInput2");
const upload_name2 = document.querySelector(".fileName2");

upload_file2.addEventListener("input", () => {
  if (isImage(upload_file2.files[0])) {
    changeVal(upload_name2, upload_file2.files[0].name);
  }
});

// 변수 file의 type이 image(png, jpg 등)인지 구분한다.
function isImage(file) {
  return file.type.indexOf("image") >= 0;
}

// input(text)의 value 속성 값 변경
function changeVal(class_name, change_name) {
  class_name.value = change_name;
}


//pjy

function refreshSection(sectionId) {
    const section = document.getElementById(sectionId);
    section.innerHTML = section.innerHTML; // 섹션 내용을 갱신
}

function okReser(id) {
    let message;

    switch (id) {
        case 'test1':
            message = "팀 새로고침.";
            refreshSection('addTeam');
            break;
        case 'test2':
            message = "선수 정보 새로고침" ;
            refreshSection('addPlayer');
            var teamCodeInput = document.getElementById("teamCodeInput");
            teamCodeInput.value = "동그라미";
            break;
            }
     alert(message);
}
           
function teamAdd(){
	var teamForm = document.getElementById("teamForm");
	
	teamForm.submit();
	
	alert("정상적으로 팀등록이 완료 되었습니다.");
}
