<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>팀관리(수정)</title>
    <!-- css 연결 -->
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/editorTeam.css" />
    <link rel="stylesheet" href="../css/tournament.css" />

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>
    <script src="../js/tournament.js" defer></script>

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>

    <!-- googleFont -->
  </head>
  <body>
  <!-- header include -->
  <jsp:include page="../include/header.jsp" />
  
    <main>
      <div class="topVideo">
        <h2>Z-CUP</h2>
        <video id="video2" autoplay playsinline loop muted>
          <source src="../videos/point.mp4" type="video/mp4" />
        </video>
      </div>
      <article class="tournament">
        <input type="checkbox" name="" id="checkBox" />
        <label for="checkBox">
          <span>Z-CUP Schedule List</span>
          <span>
            <i class="fa-solid fa-chevron-down"></i>
          </span>
        </label>
        <section class="matchNranking">
          <div class="match">
            <div class="title">
              <h1>z-cup tournament</h1>
              <button type="button" onclick="showDetail()">상세보기</button>
            </div>

            <div class="tournament">
              <h1 class="logo">zero futsal</h1>
              <ul class="round3">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="round2">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="round1">
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
              </ul>
              <ul class="teamList">
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 1</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 2</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 3</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 4</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 5</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 6</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 7</span>
                </li>
                <li>
                  <img src="images/팀2.jpg" alt="" />
                  <span class="teamName">팀 이름 8</span>
                </li>
              </ul>
            </div>
          </div>
          <div class="ranking">
            <div class="title">
              <h1>player ranking</h1>
              <button type="button" onclick="showDetail()">상세보기</button>
            </div>
            <table>
              <colgroup>
                <col class="col1" />
                <col class="col2" />
                <col class="col3" />
                <col class="col4" />
                <col class="col5" />
                <col class="col6" />
                <col class="col7" />
              </colgroup>
              <thead>
                <tr>
                  <th>순위</th>
                  <th>이름</th>
                  <th>소속팀</th>
                  <th>출전</th>
                  <th>득점</th>
                  <th>경고</th>
                  <th>퇴장</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><span class="rank">1</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">2</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
                <tr>
                  <td><span class="rank">3</span></td>
                  <td>
                    <div class="player">
                      <img src="images/person.png" alt="" />
                      <span class="playerName">홍길동</span>
                    </div>
                  </td>
                  <td>소속 팀 1</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                  <td>5</td>
                </tr>
              </tbody>
            </table>
          </div>
        </section>
      </article>

      <div class="container">
        <h1>
          팀 관리
        </h1>

        <form class="team">
          <div class="teamImage">
            <!--팀 사진-->
            <img src="../images/팀2.jpg" alt="" />
            <label class="modify">변경</button>
          </div>
          <table class="teamDetail">
            <tr>
              <th>팀 명</th>
              <td>
                <input type="checkbox" id="teamName" class="checkBotInput">
                <div class="origin branch">
                  <span>팀 이름</span>
                  <label class="modify" for="teamName">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                  <input type="text">
                </div>
              </td>
            </tr>
            <tr>
              <th>지점</th>
              <td>
                <input type="checkbox" id="branch" class="checkBotInput">
                <div class="origin branch">
                  <span>~~~점</span>
                  <label class="modify" for="branch">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                  <select name="" id="">
                    <option value="">~~1점</option>
                    <option value="">~~2점</option>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <th>팀관리자</th>
              <td>
                <input type="checkbox" id="director" class="checkBotInput">
                <div class="origin director">
                  <span>홍길동</span>
                  <label class="modify" for="director">변경</label>
                  <!--변경버튼 클릭하면 div.orgin이 감춰지고 div.new가 보인다.-->
                </div>

                <div class="new">
                  <select name="" id="">
                    <!--선수명단 중에서 선택할 수 있도록-->
                    <option value="">김길동</option>
                    <option value="">이길동</option>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <th>팀 유니폼</th>
              <td>
                <input type="checkbox" id="uniform" class="checkBotInput">
                <div class="origin uniform">
                  <span>홈: 흰 / 원정: 검</span>
                  <label class="modify" for="uniform">변경</label>
                </div>
                <div class="new uniform">
                  <label>홈: </label>
                  <input type="text" />
                  /
                  <label>원정: </label>
                  <input type="text" />
                </div>
              </td>
            </tr>
          </table>

          <table class="playerList">
            <caption>
              <span></span>
              선수명단
            </caption>
            
            <thead>
              <tr>
                <th>No.</th>
                <th>이름</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <span class="playerImage">
                      <!--선수 사진-->
                      <img src="../images/person.png" alt="">
                    </span>
                    <span>홍길동</span>
                  </div>
                </td>
                <td>
                  <button type="button" class="playerOut">퇴출</button>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>
                  <div class="player">
                    <span class="playerImage">
                      <!--선수 사진-->
                      <img src="../images/person.png" alt="">
                    </span>
                    <span>홍길동</span>
                  </div>
                </td>
                <td>
                  <button type="button" class="playerOut">퇴출</button>
                </td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
    </main>
    
    <!-- footer include -->
    <jsp:include page="../include/footer.jsp" />
  </body>
</html>
