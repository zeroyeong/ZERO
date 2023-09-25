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

//url
function showDetail(){
    location.href="zCup/scheduleDetail"
}
  
function teamAdd(){
	var teamForm = document.getElementById("teamForm");
	
	teamForm.submit();
	
	alert("정상적으로 팀 등록이 완료 되었습니다.");
}


function playerAdd(){
	var playerForm = document.getElementById("playerForm");
	
	playerForm.submit();
	
	alert("정상적으로 선수 등록이 완료 되었습니다.");
}
  
function teamEditPassword(team_no){
	var password = document.getElementById("password");
	var team_password = document.getElementById("team_password");
	console.log("password = " + password.value);
	
	if(team_password.value === password.value){
		alert("인증되었습니다.");	
		location.href="editorTeam?team_no=" + team_no;
	}else{
		alert("비밀번호를 다시 확인해주세요.");	
	}
	
	
}

//Z-CUP SCHEDULE 경기정보 박스
function showPlayInfo(label) {
  let idName = label.getAttribute('for');
  console.log(idName);
  let coverLabel = document.querySelector(`label.${idName}`);
  let playInfo = document.querySelector(`section.${idName}`);
  let closeBtn = document.querySelector(`section.${idName} label.closeBtn`);

  coverLabel.style.display = 'block';
  playInfo.style.display = 'block';

  closeBtn.addEventListener('click', function () {
    playInfo.style.display = 'none';
    coverLabel.style.display = 'none';
  });

  coverLabel.addEventListener('click', function () {
    playInfo.style.display = 'none';
    coverLabel.style.display = 'none';
  });
}


