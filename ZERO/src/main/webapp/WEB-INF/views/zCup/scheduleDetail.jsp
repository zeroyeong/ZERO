<!DOCTYPE html> 
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>스케줄 디테일</title>

    <!-- css 연결 -->
    <link rel="stylesheet" href="../css/common.css" />
    <link rel="stylesheet" href="../css/scheduleDetail.css" />
    <!-- <link rel="stylesheet" href="../css/zCup.css" /> -->

    <!-- js 연결 -->
    <script src="../js/common.js" defer></script>
    <!-- <script src="../js/detail.js" defer></script> -->

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
      <input type="radio" name="scheduleDetail" id="teamList" checked />
      <input type="radio" name="scheduleDetail" id="playschedule" />
      <ul class="harlfButton">
        <li><label for="teamList">출전 팀</label></li>
        <li><label for="playschedule">경기 일정</label></li>
      </ul>
      <div class="container">
        <section class="teamList">
          <h3>
            <span></span>
            출전 팀 List
          </h3>
          <table class="teamList">
            <colgroup>
              <col class="col1" />
              <col class="col2" />
              <col class="col3" />
              <col class="col4" />
            </colgroup>

            <thead>
              <tr>
                <th>지점명</th>
                <th>팀명</th>
                <th>등록선수</th>
                <th>상세정보</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
              <tr>
                <td>OO점</td>
                <td>
                  <div class="teamName">
                    <img src="../images/팀2.jpg" alt="" />
                    <span class="teamName">팀 이름</span>
                  </div>
                </td>
                <td>O 명</td>
                <td>
                  <button type="button" class="detailBtn">상세정보</button>
                </td>
              </tr>
            </tbody>
          </table>

          <h3 class="tournamentTitle">
            <span></span>
            경기 대진표
          </h3>
          <div class="tournament">
            <h1 class="logo">zero futsal</h1>
            <ul class="round3">
              <li>
                <ul>
                  <li class="active"></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <ul class="round2">
              <li>
                <ul>
                  <li class="active"></li>
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
                  <li class="active"></li>
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
        </section>

        <section class="playschedule">
          <!-- 데이터 추가할 때 section.zCupSchedule 자체를 등록해주시면 됩니다. -->
          <h3><span>z-cup</span> Schedule</h3>
          <div class="scheduleBox">
            <section class="zCupSchedule">
              <div class="zCup">
                <ul>
                  <li class="place">시흥점</li>
                  <li class="playInfo">
                    <div>
                      <span>04.26(월)</span>
                      21:30
                    </div>
                    <span>C구장</span>
                  </li>
                  <li class="team leftTeam">
                    <a href="teamDetail.html">팀 스피드러너</a>
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg"
                        alt=""
                      />
                    </a>
                  </li>
                  <li class="score">1 : 2</li>
                  <li class="team rightTeam">
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg"
                      />
                    </a>
                    <a href="teamDetail.html">team 동그라미</a>
                  </li>
                  <li class="button">
                    <label for="play1" class="playButton"
                      >경기정보 <span></span
                    ></label>
                  </li>
                </ul>
                <input type="checkbox" name="" id="play1" />
                <label for="play1" class="cover"></label>
                <section class="play1 playInfo">
                  <label for="play1" class="closeBtn">×</label>
                  <table>
                    <caption>
                      <span></span>
                      기본정보
                    </caption>
                    <tr>
                      <th>지점</th>
                      <td>시흥점</td>
                    </tr>
                    <tr>
                      <th>컵 명</th>
                      <td>그날 리그 그 그날리그</td>
                    </tr>
                    <tr>
                      <th>경기일자</th>
                      <td>2021.04.25(월) 21:30 C구장</td>
                    </tr>
                  </table>

                  <table>
                    <caption>
                      <span></span>
                      경기기록
                    </caption>

                    <tr>
                      <th>팀 스피드러너(1)</th>
                      <th>팀명</th>
                      <th>team 동그라미(2)</th>
                    </tr>

                    <tr>
                      <td>백태양 (1쿼터/5')</td>
                      <th>득점현황</th>
                      <td>
                        장승연 (1쿼터/6')
                        <br />
                        주영웅 (2쿼터/6')
                      </td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>경고</th>
                      <td>0</td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>퇴장</th>
                      <td>0</td>
                    </tr>
                  </table>
                </section>
              </div>
            </section>
            <section class="zCupSchedule">
              <div class="zCup">
                <ul>
                  <li class="place">시흥점</li>
                  <li class="playInfo">
                    <div>
                      <span>04.26(월)</span>
                      21:30
                    </div>
                    <span>C구장</span>
                  </li>
                  <li class="team leftTeam">
                    <a href="teamDetail.html">팀 스피드러너</a>
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg"
                        alt=""
                      />
                    </a>
                  </li>
                  <li class="score">1 : 2</li>
                  <li class="team rightTeam">
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg"
                      />
                    </a>
                    <a href="teamDetail.html">team 동그라미</a>
                  </li>
                  <li class="button">
                    <label for="play1" class="playButton"
                      >경기정보 <span></span
                    ></label>
                  </li>
                </ul>
                <input type="checkbox" name="" id="play1" />
                <label for="play1" class="cover"></label>
                <section class="play1 playInfo">
                  <label for="play1" class="closeBtn">×</label>
                  <table>
                    <caption>
                      <span></span>
                      기본정보
                    </caption>
                    <tr>
                      <th>지점</th>
                      <td>시흥점</td>
                    </tr>
                    <tr>
                      <th>컵 명</th>
                      <td>그날 리그 그 그날리그</td>
                    </tr>
                    <tr>
                      <th>경기일자</th>
                      <td>2021.04.25(월) 21:30 C구장</td>
                    </tr>
                  </table>

                  <table>
                    <caption>
                      <span></span>
                      경기기록
                    </caption>

                    <tr>
                      <th>팀 스피드러너(1)</th>
                      <th>팀명</th>
                      <th>team 동그라미(2)</th>
                    </tr>

                    <tr>
                      <td>백태양 (1쿼터/5')</td>
                      <th>득점현황</th>
                      <td>
                        장승연 (1쿼터/6')
                        <br />
                        주영웅 (2쿼터/6')
                      </td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>경고</th>
                      <td>0</td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>퇴장</th>
                      <td>0</td>
                    </tr>
                  </table>
                </section>
              </div>
            </section>
            <section class="zCupSchedule">
              <div class="zCup">
                <ul>
                  <li class="place">시흥점</li>
                  <li class="playInfo">
                    <div>
                      <span>04.26(월)</span>
                      21:30
                    </div>
                    <span>C구장</span>
                  </li>
                  <li class="team leftTeam">
                    <a href="teamDetail.html">팀 스피드러너</a>
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1798.jpg"
                        alt=""
                      />
                    </a>
                  </li>
                  <li class="score">1 : 2</li>
                  <li class="team rightTeam">
                    <a href="teamDetail.html">
                      <img
                        src="http://www.hmfutsalpark.com/files/team/emblem_1843.jpg"
                      />
                    </a>
                    <a href="teamDetail.html">team 동그라미</a>
                  </li>
                  <li class="button">
                    <label for="play1" class="playButton"
                      >경기정보 <span></span
                    ></label>
                  </li>
                </ul>
                <input type="checkbox" name="" id="play1" />
                <label for="play1" class="cover"></label>
                <section class="play1 playInfo">
                  <label for="play1" class="closeBtn">×</label>
                  <table>
                    <caption>
                      <span></span>
                      기본정보
                    </caption>
                    <tr>
                      <th>지점</th>
                      <td>시흥점</td>
                    </tr>
                    <tr>
                      <th>컵 명</th>
                      <td>그날 리그 그 그날리그</td>
                    </tr>
                    <tr>
                      <th>경기일자</th>
                      <td>2021.04.25(월) 21:30 C구장</td>
                    </tr>
                  </table>

                  <table>
                    <caption>
                      <span></span>
                      경기기록
                    </caption>

                    <tr>
                      <th>팀 스피드러너(1)</th>
                      <th>팀명</th>
                      <th>team 동그라미(2)</th>
                    </tr>

                    <tr>
                      <td>백태양 (1쿼터/5')</td>
                      <th>득점현황</th>
                      <td>
                        장승연 (1쿼터/6')
                        <br />
                        주영웅 (2쿼터/6')
                      </td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>경고</th>
                      <td>0</td>
                    </tr>
                    <tr>
                      <td>0</td>
                      <th>퇴장</th>
                      <td>0</td>
                    </tr>
                  </table>
                </section>
              </div>
            </section>
          </div>
        </section>
      </div>
    </main>
  </body>
</html>
