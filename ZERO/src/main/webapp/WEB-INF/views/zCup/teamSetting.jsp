<!DOCTYPE html>
<html lang="en"> 
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀 관리</title>
    <!-- css연결 -->
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/teamSetting.css" />

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <header>
      <div class="headerBar">
        <h1 class="logo"><a href="../index.html">zero futsal</a></h1>

        <nav class="webNav">
          <ul class="leftMenu">
            <li id="point">
              <a>지점<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="reservation">
              <a>예약<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="zCup">
              <a>Z-CUP<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="customer">
              <a>고객센터<span class="nav-bar hover-bar"></span></a>
            </li>
          </ul>

          <ul class="rightMenu">
            <li>
              <a href="" class="sns facebook">
                <i class="fa-brands fa-facebook"></i>
              </a>
            </li>
            <li>
              <a href="" class="sns instagram">
                <i class="fa-brands fa-instagram"></i>
              </a>
            </li>
            <li class="loginMenu">
              <a href="../login/login.html">
                memberLogin
                <i class="fa-solid fa-user"></i>
              </a>
            </li>
          </ul>
        </nav>
        <input type="checkbox" name="" id="toggleMenu" />
        <label for="toggleMenu" class="toggleMenu">
          <i class="fa-solid fa-bars" style="color: #ffffff"></i>
        </label>
        <nav class="slideMenu">
          <button type="button" class="memberLogin">
            MEMBER LOGIN
            <i class="fa-solid fa-user"></i>
          </button>
          <ul class="navMenu">
            <li id="point">
              <a>지점<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="reservation">
              <a>예약<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="zCup">
              <a>Z-CUP<span class="nav-bar hover-bar"></span></a>
            </li>
            <li id="customer">
              <a>고객센터<span class="nav-bar hover-bar"></span></a>
            </li>
          </ul>
          <ul class="snsMenu">
            <li>
              <a href="" class="sns facebook">
                <i class="fa-brands fa-facebook"></i>
              </a>
            </li>
            <li>
              <a href="" class="sns instagram">
                <i class="fa-brands fa-instagram"></i>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </header>

    <main>
      <div class="topVideo">
        <h2>Z-CUP</h2>
        <video id="video2" autoplay playsinline loop muted>
          <source src="../videos/point.mp4" type="video/mp4" />
        </video>
      </div>

      <div class="container">
        <h1 class="pageTitle">팀관리</h1>

        <div class="settingBox">
          <p>
            <i class="fa-solid fa-location-dot"></i>팀관리에 앞서 정보를 입력해
            주세요.
          </p>
          <div class="settingFrom">
            <form action="#">
              <label>비밀번호</label>
              <input type="password" name="" />
            </form>
            <div class="btns">
              <a href="" class="accept">인증하기</a>
              <a href="">취소하기</a>
            </div>
          </div>
        </div>
      </div>
    </main>

    <footer>
      <ul>
        <li><a href="">개인정보처리방침</a></li>
        <li><a href="">이용약관</a></li>
        <li><a href="">이메일무단수집거부</a></li>
      </ul>
      <p>copyright&copy;zero.allright reserved</p>
    </footer>
  </body>
</html>
