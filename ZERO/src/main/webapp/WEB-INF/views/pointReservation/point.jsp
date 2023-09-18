<!DOCTYPE html>
<html lang="ko">

<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO FUTSAL</title>

    <!-- css 연결-->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/point.css">

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
            <h2>지점현황</h2>
            <video id="video2" autoplay playsinline loop muted>
                <source src="../videos/point.mp4" type="video/mp4" />
            </video>
        </div>
        <div class="subMenuBar">
            <div class="subMenu">
                <input type="checkbox" name="" id="menuDown" />
                <button type="button" class="subMenuTitle">
                    전체지점보기
                    <span>
                        <label for="menuDown">
                            <i class="fa-solid fa-chevron-down"></i>
                        </label>
                    </span>
                </button>

                <div class="subMenuList">
                    <ul class="subMenus areaTitle">
                        <li>
                            <a>서울, 경기 지역</a>
                            <ul class="areaList">
                                <li><a href="">더피치 인하점</a></li>
                                <li><a href="">더피치 평택점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>대전, 충청 지역</a>
                            <ul class="areaList">
                                <li><a href="">더피치 천안신방점</a></li>
                                <li><a href="">아산인주풋살장</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>부산, 경상 지역</a>
                            <ul class="areaList">
                                <li><a href="">부산 북구점</a></li>
                                <li><a href="">울산 남구점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>광주, 전라 지역</a>
                            <ul class="areaList">
                                <li><a href="">전주 완산점</a></li>
                            </ul>
                        </li>
                        <li>
                            <a>제주 지역</a>
                            <ul class="areaList">
                                <li><a href="">제주 서귀포점</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="contentList">
            <div class="list">
                <span class="pointImg">
                    <img src="../images/인하점.jpg" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">더피치 인하점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>인천광역시 미추홀구 소성로 6 22201</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-3662-8124 / 010-8255-8124 (14:00 ~ 18:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/평택점.png" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">더피치 평택점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>평택시 죽백동 729-2</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-3662-8124 / 010-8255-8124 (14:00 ~ 18:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/천안신방점.png" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">더피치 천안신방점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>천안시 동남구 신촌1길 23 홈플러스 천안신방점 옥상층(7층)</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-9369-1378 / 070-8094-0338</p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/아산인풋살장.jpg" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">아산인주풋살장</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>아산시 인주면 아산만로 1500</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-2439-9961 / 010-7221-1904 (06:00 ~ 24:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/부산북구점.jpg" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">부산북구점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>북구 금곡대로 469 농협하나로클럽 5층(옥상층)</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-5617-6205 / 010-4192-4771</p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/울산 남구점.jpg" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">울산 남구점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>남구 수암로 148 홈플러스 울산남구점 옥상층(5층)</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>052-227-1380 / 010-2477-1380 (10:00 ~ 23:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/전주완산점.png" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">전주 완산점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>전주시 완산구 기린대로 170 홈플러스 전주완산점 옥상층</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-6804-0220 / 010-5420-0222 (10:00 ~ 24:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
                </div>
            </div>
            <div class="list">
                <span class="pointImg">
                    <img src="../images/제주서귀포.jpg" alt="">
                </span>
                <div class="listText">
                    <p class="pt1">제주 서귀포점</p>
                    <p class="pt2"><i class="fa-solid fa-location-dot"></i>95, Jungsanganseo-ro, Seogwipo-si, Jeju
                        Island, South Korea</p>
                    <p class="pt3"><i class="fa-solid fa-phone-volume"></i>010-3662-8124 / 010-8255-8124 (14:00 ~ 18:00)
                    </p>
                    <a href="reservationInfo.html" class="reserBtn">
                        <span><i class="fa-regular fa-calendar-days"></i>예약하기</span>
                    </a>
                    <a href="pointInfo.html" class="infoBtn">
                        <span><i class="fa-regular fa-clipboard"></i>지점소개</span>
                    </a>
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