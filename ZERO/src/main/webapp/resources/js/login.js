function loginCheck(){
	if(document.loginFrm.userId.value == ""){
		alert("아이디를 입력해 주세요.");
		document.loginFrm.userId.focus();
		return;
	}
	
	if(document.loginFrm.userPw.value == ""){
		alert("비밀번호를 입력해 주세요.");
		document.loginFrm.userPw.focus();
		return;
	}
	document.loginFrm.submit();
}