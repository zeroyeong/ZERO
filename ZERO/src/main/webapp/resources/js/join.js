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

//중복확인 버튼 클릭했을 때
function idCheck(id){
	const frm = document.joinFrm;
	if(id == ""){
 	alert("아이디를 입력해 주세요.");
	frm.mem_id.focus();
} else{
	url = "idCheck?mem_id";
	window.open(url, "IDCheck", "width=550, height=300");
	}	  
}

//회원가입 버튼 클릭했을 때
function joinFrmSubmit(){
	const id = document.getElementById("user_id").value;
	const pwd1 = document.getElementById("user_pwd").value;
	const pwd2 = document.getElementById("user_pwd_check").value;
	const name = document.getElementById("user_name").value;
	const confirm = document.getElementById("emailConfirm").value;
	const idCheck = document.getElementById("checkId").value;
	const mailCheck = document.getElementById("checkMail").value;
	
	if(id == "" || checkId != "true" || name == "" || confirm == "" ||
		pwd1 == "" || pwd2 == "" || pwd1 != pwd2 || mailCheck != "true"){
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
		}else if(confirm == ""){
			alert("이메일 인증을 완료해주세요.");
		}else if(pwd1 != pwd2){
			alert("입력한 비밀번호가 일치하지 않습니다. 확인해주세요!");
		}else{
			alert("이메일 인증을 해주세요!");
		}
	}else{
		alert("환영합니다. 회원가입이 완료되었습니다.");
		document.joinFrm.submit();	
	}
}