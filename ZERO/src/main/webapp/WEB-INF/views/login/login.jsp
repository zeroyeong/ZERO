<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Log In</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="../css/login.css" />

    <!-- js연결 -->
    <script src="../js/login.js" defer></script>

    <!-- fontawsome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="container" id="find_idDiv">
      <h1>회원정보를 입력해 주세요.</h1>
      <button type="button" class="closeButton">
        <i class="fa-solid fa-xmark"></i>
      </button>
      <form action="">
        <input type="text" name="" id="" placeholder="이름 입력" />
        <input type="text" name="" id="" placeholder="휴대전화번호 입력" />
        <button>확인</button>
      </form>
    </div>

    <div class="container" id="find_pwdDiv">
      <h1>회원정보를 입력해 주세요.</h1>
      <button type="button" class="closeButton" id="closeButton">
        <i class="fa-solid fa-xmark"></i>
      </button>
      <form action="">
        <input type="text" name="" id="" placeholder="아이디 입력" />
        <input type="text" name="" id="" placeholder="이름 입력" />
        <input type="text" name="" id="" placeholder="휴대전화번호 입력" />
        <button>확인</button>
      </form>
    </div>

    <div id="background"></div>

    <div class="bodyDiv">
      <h1 class="logo"><a href="../index.html">ZERO FUTSAL</a></h1>
      <main>
        <form action="" method="post" id="loginFrm">
          <fieldset>
            <legend class="skip">로그인 양식</legend>

            <ul>
              <li>
                <input type="text" name="user_id" placeholder="아이디" />
              </li>
              <li>
                <input type="text" name="user_pwd" placeholder="비밀번호" />
              </li>
            </ul>
            <div class="btm">
              <p>
                <label for="save_id">
                  <input type="checkbox" name="save_id" id="save_id" />
                  <span>아이디 저장</span>
                </label>
              </p>
            </div>
            <input type="button" value="로그인" id="login_btn" />
          </fieldset>
        </form>
        <div class="accountMenu">
          <a class="find_id">아이디 찾기</a>
          <a class="find_pwd">비밀번호 찾기</a>
          <a href="../join/join.html" class="join">회원가입</a>
        </div>
        <section class="snsLogin">
          <p>SNS 간편로그인</p>
          <div class="snsButtons">
            <button class="kakao">
              <span class="logo"></span>
              카카오 계정으로 로그인
              <span class="snsLoginGO"></span>
            </button>
            <button class="naver">
              <span class="logo"></span>
              네이버 계정으로 로그인
              <span class="snsLoginGO"></span>
            </button>
            <button class="facebook">
              <span class="logo"></span>
              페이스북 계정으로 로그인
              <span class="snsLoginGO"></span>
            </button>
          </div>
        </section>
      </main>
      <footer>
        <a href="">ZERO FUTSAL</a>
        <p>copyright &copy; zero futsal allright reserved</p>
      </footer>
    </div>
  </body>
</html>
