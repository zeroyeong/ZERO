/*______회원가입______*/

// 한번에 모든 약관 클릭하기
function selectAll(selectAll) {
  const chekboxes = document.getElementsByName("turm");

  chekboxes.forEach((t) => {
    t.checked = selectAll.checked;
  });
}

// 동의 버튼 클릭했을 때 약관alert + 다음페이지 넘어가도록
function frmSubmit(){
	const acep1 = document.getElementById("homepage");
    const acep2 = document.getElementById("userInfo");
    const acep3 = document.getElementById("userInfotrust");

  if (acep1.checked != true) {
    alert("홈페이지 이용약관에 동의해주세요.");
    return false;
  }

  if (acep2.checked != true) {
    alert("개인정보 수집 및 이용에 대한 약관에 동의해주세요.");
    return false;
  }

  if (acep3.checked != true) {
    alert("개인정보 취급위탁 안내에 대한 약관에 동의해주세요.");
    return false;
  }

  self.location.href = "join";
} 

// 중복확인 버튼 클릭했을 때
function idCheck(id){
	const frm = document.joinFrm;
	if(id == ""){
 	alert("아이디(이메일)를 입력해 주세요.");
	frm.mem_id.focus();
}else if(id.indexOf("@") == -1 || id.indexOf(".com") == -1){
	alert("입력하신 아이디는 이메일형식이 아닙니다. 확인해주세요.");
	frm.mem_id.focus();
}else{
	url = "idCheck?id="+id;
	window.open(url, "IDCheck", "width=550, height=300");
	}	  
}

// 중복확인
function useId(){
	opener.joinFrm.mem_id.value="${mem_id}";
	opener.joinFrm.checkId.value=true;
	opener.joinFrm.mem_pw.focus();
	window.close();
}

function idFrmSubmit(id){
	if(id.indexOf("@") == -1 || id.indexOf(".com") == -1){
		console.log(id);
		alert("이메일 형식이 잘못됐습니다. 확인해주세요!");
	} else{
		document.idFrm.action = "idCheck?id="+id;
		document.idFrm.submit();
	}
}

// 회원가입 버튼 클릭했을 때
function joinFrmSubmit(){
console.log("click함");
	const id = document.getElementById("user_id").value;
	const pwd1 = document.getElementById("user_pwd").value;
	const pwd2 = document.getElementById("user_pwd_check").value;
	const name = document.getElementById("user_name").value;
	const idCheck = document.getElementById("checkId").value;
	
	if(id == "" || checkId != "true" || name == "" || 
		pwd1 == "" || pwd2 == "" || pwd1 != pwd2){
		if(id == ""){
			alert("아이디(이메일)를 입력해 주세요.");
			document.joinFrm.mem_id.focus();
		}else if(idCheck != "true"){
			alert("아이디(이메일) 중복확인을 해주세요.");
		}else if(pwd1 == ""){
			 alert("비밀번호를 입력해 주세요.");
			 document.joinFrm.mem_pw.focus();
		}else if(pwd2 == ""){
			alert("비밀번호를 확인해 주세요.");
			document.joinFrm.user_pwd_check.focus();
		} else if(name == ""){
			alert("이름을 입력해 주세요.");
			document.joinFrm.mem_name.focus();
		}else if(pwd1 != pwd2){
			alert("입력한 비밀번호가 일치하지 않습니다. 확인해주세요!");
		}
		else{
			alert("환영합니다. 회원가입이 완료되었습니다.");
			document.joinFrm.submit();	
		}
	}
}

// 메인인증
function emailcheck(emailCode){
	var emailConfirm = document.getElementById("emailConfirm");
	console.log("emailCode = " + emailCode);
	if(emailConfirm.value != emailCode){
		console.log("인증번호가 다르다");
		alert('인증번호를 다시 확인해주세요.');
	}else{
		console.log("인증번호가 확인");
		alert('인증번호가 확인되었습니다');
	}
}

function emailSand(){
		var joinFrm = document.getElementById("joinFrm");
		joinFrm.action="email";
		joinFrm.submit();
}

/*____________________________________________________________________________________________*/

/*______로그인______*/
// 아이디찾기
function findId(){
	window.open("findId","findId", "width=670, height=500");
}

// 비밀번호 찾기
function findPw(){
	window.open("findPw","findId", "width=670, height=560");
}

// 아이디 저장
$(document).ready(function () {
    var key = getCookie("idChk");
    if (key != "") {
        $("#userId").val(key);
    }

    if ($("#userId").val() != "") {
        $("#saveId").attr("checked", true);
    }

    $("#saveId").change(function () {
        if ($("#saveId").is(":checked")) {
            setCookie("idChk", $("#userId").val(), 7);
        } else {
            deleteCookie("idChk");
        }
    });

    $("#userId").keyup(function () {
        if ($("#saveId").is(":checked")) {
            setCookie("idChk", $("#logId").val(), 7);
        }
    });
});

function setCookie(cookieName, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

function deleteCookie(cookieName) {
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if (start != -1) {
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if (end == -1) end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

// 로그인 실패 알럿
$(function(){
	var login_result = "${login_result}";
	if(login_result == "fail"){
		alert("로그인실패 \n 아이디와 비밀번호를 확인해주세요.");
	}
})
	  
/*____________________________________________________________________________________________*/

/*______마이페이지______*/

/*function updateMember(){
	const pw = document.getElementById("mem_pw");
	const pwCheck = document.getElementById("mem_pw2");
	
	if(pw.value != pwCheck.value){ alert("비밀번호를 확인해주세요."); }
	
	document.updateMember.submit();
}*/

// 정보수정
function updateCheck(){
	let mem_pw = document.updateMember.mem_pw.value;
	let mem_pw2 = document.updateMember.mem_pw2.value;
	
	if(mem_pw == ""){
		alert("비밀번호를 입력해주세요.");
	} else if(mem_pw != mem_pw2){
		alert("비밀번호 재확인을 해주세요.")
	} else{
		alert("정보변경이 완료되었습니다.")
		document.updateMember.submit();
	}
}