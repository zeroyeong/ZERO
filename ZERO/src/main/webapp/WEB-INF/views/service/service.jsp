<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/service.css" />

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>

    <!-- Font awsome -->
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
            <li id="manager">
              <a>Manager<span class="nav-bar hover-bar"></span></a>
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
            <li id="manager">
              <a>Manager<span class="nav-bar hover-bar"></span></a>
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
        <h2>고객센터</h2>
        <video id="video2" autoplay playsinline loop muted>
          <source src="../videos/point.mp4" type="video/mp4" />
        </video>
      </div>

      <input type="radio" name="service" id="notice" checked />
      <input type="radio" name="service" id="faq" />
      <ul class="harlfButton">
        <li><label for="notice">공지사항</label></li>
        <li><label for="faq">FAQ</label></li>
      </ul>

      <div class="container">
        <h1 class="pageTitle notice">공지사항</h1>
        <h1 class="pageTitle faq">FAQ</h1>

        <section class="notice">
          <table>
            <thead>
              <tr>
                <th class="no">번호</th>
                <th class="title">제목</th>
                <th class="date">작성일</th>
                <th class="show">조회</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="post-Notice.html">공지사항 1번</a></td>
                <td>2023.09.11</td>
                <td>1</td>
              </tr>
            </tbody>
          </table>

          <form action="">
            <select name="" id="">
              <option value="">제목</option>
            </select>
            <input type="text" />
            <button type="button" class="searchButton">
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </form>

          <ul class="pagination">
            <li>1</li>
            <li>2</li>
          </ul>
        </section>

        <section class="faq">
          <table>
            <thead>
              <tr>
                <th class="no">번호</th>
                <th class="title">제목</th>
                <th class="date">작성일</th>
                <th class="show">조회</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="post-Faq.html">FAQ 1번</a></td>
                <td>2023.09.11</td>
                <td>1</td>
              </tr>
            </tbody>
          </table>

          <form action="">
            <select name="" id="">
              <option value="">제목</option>
            </select>
            <input type="text" />
            <button type="button" class="searchButton">
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </form>

          <ul class="pagination">
            <li>1</li>
            <li>2</li>
          </ul>
        </section>
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
