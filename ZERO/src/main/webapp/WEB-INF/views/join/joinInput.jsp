<!DOCTYPE html>
<html lang="en"> 
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입-정보입력</title>
    <link rel="stylesheet" href="../css/join.css" />
  </head>
  <body>
    <div class="bodyDiv">
      <h1 class="logo"><a href="../index.html">ZERO FUTSAL</a></h1>
      <main>
        <form action="">
          <ul>
            <li>
              <label for="user_id"
                >아이디(이메일)<span class="essential">(필수)</span></label
              >
              <input type="text" name="user_id" id="user_id" />
            </li>
            <li>
              <label for="user_pwd"
                >비밀번호<span class="essential">(필수)</span></label
              >
              <input type="password" name="user_pwd" id="user_pwd" />
            </li>
            <li>
              <label for="user_pwd_check"
                >비밀번호 재확인<span class="essential">(필수)</span></label
              >
              <input
                type="password"
                name="user_pwd_check"
                id="user_pwd_check"
              />
            </li>
            <li>
              <label for="user_name"
                >이름<span class="essential">(필수)</span></label
              >
              <input type="text" name="user_name" id="user_name" />
            </li>
            <li>
              <label for="user_phone"
                >휴대전화<span class="essential">(필수)</span></label
              >
              <div class="phone">
                <input type="text" name="phone1" maxlength="3" />
                <span>-</span>
                <input type="text" name="phone2" maxlength="4" />
                <span>-</span>
                <input type="text" name="phone3" maxlength="4" />
              </div>
            </li>
            <li class="user_phone_certified">
              <label for="user_phone_certified">이메일 인증번호 전송</label>
              <input type="button" value="전송" />
            </li>
            <li>
              <label for="message"
                >본인 메일 인증<span class="essential">(필수)</span></label
              >
              <div class="message">
                <input type="text" name="user_phone_message" />
                <input type="button" value="인증" />
              </div>
            </li>
          </ul>
          <button class="joinBtn">가입하기</button>
        </form>
      </main>
      <footer>
        <a href="">ZERO FUTSAL</a>
        <p>copyright &copy; zero futsal allright reserved</p>
      </footer>
    </div>
  </body>
</html>
