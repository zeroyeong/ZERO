<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("ftP2BpWPuD8yQyXqmdlO", "http://localhost:8080/zero/navercallback");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  console.log("콜백 실행");

	function naverSignInCallback(){
		name = naver_id_login.getProfileData("name");
		email = naver_id_login.getProfileData("email");
		phone = naver_id_login.getProfileData("phone");
		
		$.ajax({
			type:'POST',
			data: {
				'mem_id': email,
				'mem_name' : name,
				'mem_phone' : phone
			},
			dataType: 'text',
			success: function(result){
				if(result == 1){
					console.log('성공');
					closePopupAndRedirect();
				} else{
					window.close();
				}
			},
			error: function(result){
				window.close();
			}
		})
	}
  }
</script>
</body>
</html>