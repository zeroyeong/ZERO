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