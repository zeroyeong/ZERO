<!DOCTYPE html>
<html lang="ko"> 
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>서브메뉴</title>
    <link rel="stylesheet" href="css/common.css" />
    <!-- <link rel="stylesheet" href="tournament.css" /> -->
    <link rel="stylesheet" href="test.css" />

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/1a03dd2ba1.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
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
  </body>
</html>
