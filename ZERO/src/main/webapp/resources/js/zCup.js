const btn = document.querySelectorAll('#selectMenuBtn');

btn.forEach((t) => {
  t.addEventListener('click', (e) => {
    const target = e.currentTarget;

    btn.forEach((t) => t.classList.remove('active'));
    target.classList.add('active');
  });
});

// PAGE TITLE CHANGE
const zCupTitle = document.getElementById('zCupTitle');
const playBtn = document.querySelector('label#zCupInfo');
const addBtn = document.querySelector('label#teamAdd');
const listbtn = document.querySelector('label#teamList');
const allBtn = document.querySelector('label#zCupAllView');

playBtn.addEventListener('click', function () {
  zCupTitle.innerText = 'Z-CUP 소개';
});

addBtn.addEventListener('click', function () {
  zCupTitle.innerText = '팀/선수 등록';
});

listbtn.addEventListener('click', function () {
  zCupTitle.innerText = '팀리스트';
});

allBtn.addEventListener('click', function () {
  zCupTitle.innerText = 'Z-CUP 전체 현황';
});

const upload_file = document.querySelector('#fileInput');
const upload_name = document.querySelector('.fileName');

upload_file.addEventListener('input', () => {
  if (isImage(upload_file.files[0])) {
    changeVal(upload_name, upload_file.files[0].name);
  }
});

const upload_file2 = document.querySelector('#fileInput2');
const upload_name2 = document.querySelector('.fileName2');

upload_file2.addEventListener('input', () => {
  if (isImage(upload_file2.files[0])) {
    changeVal(upload_name2, upload_file2.files[0].name);
  }
});

const upload_file3 = document.querySelector('#fileInput3');
const upload_name3 = document.querySelector('.fileName3');

upload_file3.addEventListener('input', () => {
  if (isImage(upload_file3.files[0])) {
    changeVal(upload_name3, upload_file3.files[0].name);
  }
});


// 변수 file의 type이 image(png, jpg 등)인지 구분한다.
function isImage(file) {
  return file.type.indexOf('image') >= 0;
}

// input(text)의 value 속성 값 변경
function changeVal(class_name, change_name) {
  class_name.value = change_name;
}

//url
function showDetail() {
  location.href = 'scheduleDetail';
}

function teamAdd() {
  var loginCheck = document.getElementById('loginCheck');
  
  if(loginCheck.value == ""){
    alert('회원 전용 서비스 입니다. 로그인후 이용해 주세요');
    return;
  }
  
  var team_name = document.getElementById('team_name');
  if(team_name.value == ""){
  	alert('팀명을 입력해주세요');
  	return;
  }
  
  var team_phone = document.getElementById('team_phone');
  if(team_phone.value == ""){
  	alert('연락처를 입력해주세요');
  	return;
  }
  
  var team_mail = document.getElementById('team_mail');
  if(team_mail.value == ""){
  	alert('이메일을 입력해주세요');
  	return;
  }
  
  var team_uniform_home = document.getElementById('team_uniform_home');
  if(team_uniform_home.value == ""){
  	alert('유니폼(홈)을 입력해주세요');
  	return;
  }
  
  var team_uniform_away = document.getElementById('team_uniform_away');
  if(team_uniform_away.value == ""){
  	alert('유니폼(어웨이)을 입력해주세요');
  	return;
  }
  
  var teamForm = document.getElementById('teamForm');
  var pwd1 = document.getElementById('pwd1');
  var pwd2 = document.getElementById('pwd2');	
  
  if(pwd1.value == ""){
  	alert('팀비밀번호를 입력해주세요');
  	return;
  }
  
  if(pwd2.value == ""){
  	alert('팀비밀번호 확인을 입력해주세요');
  	return;
  }
  
  if(pwd1.value != pwd2.value){
  	    alert('비밀번호가 일치하지 않습니다');
  }else{
	  alert("정상적으로 팀 등록이 완료 되었습니다.\n팀코드는 팀리스트 > 팀관리 에서 확인 가능합니다.");
	  teamForm.submit();  
  }

}

function playerAdd() {
  var loginCheck = document.getElementById('loginCheck');
  
  if(loginCheck.value == ""){
    alert('회원 전용 서비스 입니다. 로그인후 이용해 주세요');
    return;
  }
  
  var teamCodeOk = document.getElementById("teamCodeOk");
  if(teamCodeOk.value == "noCheck"){
  	 alert('팀코드를 확인해주세요');
     return;
  }
  
  var playerForm = document.getElementById('playerForm');
  var team_pwd = document.getElementById('team_pwd');
  var player_team_pwd = document.getElementById('player_team_pwd');
  
  if(team_pwd.value != player_team_pwd.value){
  	alert('비밀번호가 일치하지 않습니다');
  }else{
    alert('정상적으로 선수 등록이 완료 되었습니다.');
    playerForm.submit();
  } 
}

function deletePlayer(player_no, team_no) {
	
	const response = confirm("퇴출 하시겠습니까?");

	if(response){
		var playerForm = document.getElementById('playerForm');
   		location.href = 'playerDelete?player_no=' + player_no +'&team_no=' + team_no;
	}	
}

//Z-CUP SCHEDULE 경기정보 박스
function showPlayInfo(label) {
  let idName = label.getAttribute('for');

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
    payInfo.style.display = 'none';
    coverLabel.style.display = 'none';
  });
}


