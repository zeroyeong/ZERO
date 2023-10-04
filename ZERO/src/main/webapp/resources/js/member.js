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

//중복확인 버튼 클릭했을 때
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
		}else if(confirm == ""){
			alert("이메일 인증을 완료해주세요.");
		}else{
			alert("입력한 비밀번호가 일치하지 않습니다. 확인해주세요!");
		}
	}else{
		alert("환영합니다. 회원가입이 완료되었습니다.");
		document.joinFrm.submit();	
	}
}

/*____________________________________________________________________________________________*/

/*______로그인______*/
function loginCheck(){
	const id = document.getElementById("userid");
	const pw = document.getElementById("userPw");
	
	if(id.value == ""){
		alert("아이디를 입력해 주세요.");
		document.loginFrm.mem_id.focus();
		return;
	}
	
	if(pw.value == ""){
		alert("비밀번호를 입력해 주세요.");
		document.loginFrm.mem_pw.focus();
		return;
	}
	document.loginFrm.submit();	
}

//페이스북 로그인
	function fnFbCustomLogin() {
	FB.login(
	  function (response) {
	    if (response.status === 'connected') {
	      FB.api('/me', 'get', { fields: 'name,email' }, function (r) {
	      console.log(r);
	      });
	    } else if (response.status === 'not_authorized') {
	      // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
	      alert('앱에 로그인해야 이용가능한 기능입니다.');
	    } else {
	      // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
	      alert('페이스북에 로그인해야 이용가능한 기능입니다.');
	    }
	    },
	    { scope: 'public_profile,email' }
	  );
	}

    window.fbAsyncInit = function () {
      FB.init({
        appId: '1588150011384568', // 내 앱 ID를 입력한다.
        cookie: true,
        xfbml: true,
        version: 'v10.0',
      });
      FB.AppEvents.logPageView();
    };
  
//카카오톡 로그인
	Kakao.init('c2872b3b8e9c7a18f5ac7e21d71aa00b'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
	  
/*____________________________________________________________________________________________*/

/*______마이페이지______*/

function updateMember(){
	const pw = document.getElementById("mem_pw");
	const pwCheck = document.getElementById("mem_pw2");
	
	if(pw.value != pwCheck.value){ alert("비밀번호를 확인해주세요."); }
	
	document.updateMember.submit();
}