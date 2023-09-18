<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO FUTSAL</title>

    <!-- css 연결-->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/reservation.css">

    <!-- js 연결-->
    <script src="../js/common.js" defer></script>

    <!--아이콘-->
    <script src="https://kit.fontawesome.com/a923b8b28f.js" crossorigin="anonymous"></script>
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
            <h2>예약확인</h2>
            <video id="video2" autoplay playsinline loop muted>
                <source src="../videos/point.mp4" type="video/mp4" />
            </video>
        </div>

        <ul class="harlfButton">
            <li><a href="reservation.html"><label>예약</label></a></li>
            <li id="reserComplete"><a href="#"><label>예약확인</label></a></li>
        </ul>

        <div class="container">

            <h1>예약확인</h1>

            <div class="reserInfoTable">
                <table>
                    <colgroup>
                        <col class="t01" style="width:150px" />
                        <col width="" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">예약일자</th>
                            <td class="infoLeft">2023.09.30 (토)</td>
                        </tr>
                        <tr>
                            <th scope="row">신청자</th>
                            <td class="infoLeft">김대영</td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td class="infoLeft">010-5818-0382</td>
                        </tr>
                        <tr>
                            <th scope="row">지점</th>
                            <td class="infoLeft">전주 완산점</td>
                        </tr>
                        <tr>
                            <th scope="row">선택구장</th>
                            <td class="infoLeft">GATORADE 구장</td>
                        </tr>
                        <tr>
                            <th scope="row">예약시간</th>
                            <td class="infoLeft">
                                12:00~14:00 (2시간)<BR>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">총 결제금액</th>
                            <td class="infoLeft">60,000원</td>
                        </tr>
                        <tr>
                            <th scope="row">결제여부</th>
                            <td class="infoLeft">
                                <option value="10">결제대기</option>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">예약취소확인</th>
                            <td class="infoLeft">
                                <input type="password" placeholder="예약비밀번호" name="pw" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="btnWrap">
                <a href="../index.html"><button type="button" class="btnCancel">예약취소하기</button></a>
            </div>

            <div class="reserInfoTable">
                <table>
                    <colgroup>
                        <col class="t01" style="width:150px" />
                        <col width="" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">예약일자</th>
                            <td class="infoLeft">2022.04.16 (토)</td>
                        </tr>
                        <tr>
                            <th scope="row">신청자</th>
                            <td class="infoLeft">김대영</td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td class="infoLeft">010-6358-2096</td>
                        </tr>
                        <tr>
                            <th scope="row">지점</th>
                            <td class="infoLeft">창원점</td>
                        </tr>
                        <tr>
                            <th scope="row">선택구장</th>
                            <td class="infoLeft">A구장</td>
                        </tr>
                        <tr>
                            <th scope="row">예약시간</th>
                            <td class="infoLeft">
                                18:00~20:00 (2시간)<BR>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">총 결제금액</th>
                            <td class="infoLeft">120,000원</td>
                        </tr>
                        <tr>
                            <th scope="row">결제여부</th>
                            <td class="infoLeft">
                                <option value="12">예약완료</option>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">예약취소확인</th>
                            <td class="infoLeft">
                                <input type="password" placeholder="예약비밀번호" name="pw" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="reserInfoTable">
                <table>
                    <colgroup>
                        <col class="t01" style="width:150px" />
                        <col width="" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">예약일자</th>
                            <td class="infoLeft">2021.05.22 (토)</td>
                        </tr>
                        <tr>
                            <th scope="row">신청자</th>
                            <td class="infoLeft">김대영</td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td class="infoLeft">010-6358-2096</td>
                        </tr>
                        <tr>
                            <th scope="row">지점</th>
                            <td class="infoLeft">창원점</td>
                        </tr>
                        <tr>
                            <th scope="row">선택구장</th>
                            <td class="infoLeft">A구장</td>
                        </tr>
                        <tr>
                            <th scope="row">예약시간</th>
                            <td class="infoLeft">
                                15:30~17:00 (2시간)<BR>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">총 결제금액</th>
                            <td class="infoLeft">70,000원</td>
                        </tr>
                        <tr>
                            <th scope="row">결제여부</th>
                            <td class="infoLeft">
                                <option value="12">예약완료</option>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">예약취소확인</th>
                            <td class="infoLeft">
                                <input type="password" placeholder="예약비밀번호" name="pw" />
                            </td>
                        </tr>
                    </tbody>
                </table>
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