function showDetail(){
    location.href="scheduleDetail";
}

function teamSetting(team_no){
	location.href="zCup/teamSetting?team_no="+team_no;
} 

function teamDetail(team_no){
	location.href="teamDetail?team_no=" + team_no;
}

function editorTeam(team_no){
	location.href="zCup/editorTeam?team_no=" + team_no;
} 

function enter(team_no) {
    if(document.getElementById("enterBtn") != null){ 
	    // keyCode 13은 엔터이다.
	    if(event.keyCode === 13) {
	       teamEditPassword(team_no)
	      return false;
	    }
	    return true;
    }
}

function teamEditPassword(team_no) {
  var password = document.getElementById('password');
  var team_password = document.getElementById('team_password');

  if (team_password.value === password.value) {
    alert('인증되었습니다.');
    location.href = 'editorTeam?team_no=' + team_no;
  } else {
    alert('비밀번호를 다시 확인해주세요.');
  }
}

function teamEdit() {
   var teamForm = document.getElementById('teamForm');
   
   var fileInput = document.getElementById("fileInput");
   
   if(fileInput.value != ""){
   	  var emblemChanged = document.getElementById("emblemChanged");
   	  emblemChanged.value = "basic";
   }
   teamForm.submit();
}

//EDITOR TEMA
function readImage(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      document.getElementById('newTeamImage').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('newTeamImage').src = '';
  }
}
