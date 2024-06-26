<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diamond Ring</title>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김

            setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
        });

        //이전 슬라이드
        function prevSlide() {
            $(".mySlideDiv").hide(); //모든 div 숨김
            var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
            var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수

            //반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
            $(".mySlideDiv").each(function (index, item) {
                if ($(this).hasClass("active")) {
                    currentIndex = index;
                }

            });

            //새롭게 나타낼 div의 index
            var newIndex = 0;

            if (currentIndex <= 0) {
                //현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
                newIndex = allSlide.length - 1;
            } else {
                //현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
                newIndex = currentIndex - 1;
            }

            //모든 div에서 active 클래스 제거
            $(".mySlideDiv").removeClass("active");

            //새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
            $(".mySlideDiv").eq(newIndex).addClass("active");
            $(".mySlideDiv").eq(newIndex).show();

        }

        //다음 슬라이드
        function nextSlide() {
            $(".mySlideDiv").hide();
            var allSlide = $(".mySlideDiv");
            var currentIndex = 0;

            $(".mySlideDiv").each(function (index, item) {
                if ($(this).hasClass("active")) {
                    currentIndex = index;
                }

            });

            var newIndex = 0;

            if (currentIndex >= allSlide.length - 1) {
                newIndex = 0;
            } else {
                newIndex = currentIndex + 1;
            }

            $(".mySlideDiv").removeClass("active");
            $(".mySlideDiv").eq(newIndex).addClass("active");
            $(".mySlideDiv").eq(newIndex).show();

        }
        // 메뉴 드롭다운 
        $(document).ready(function () {
            $(".outer-menu-item").hover(function () {
                $(this).find(".inner-menu").show();
            }, function () {
                $(this).find(".inner-menu").hide();
            });
        });

        //이미지변경
        window.onload = function () {
            var count = 0;
            var earring = document.getElementById('cubic');
            var frames = [
                "귀걸이/큐빅.jpg", "귀걸이/큐빅1.jpg", "귀걸이/큐빅2.jpg", 
                "귀걸이/큐빅3.jpg", "귀걸이/큐빅4.jpg", 
            ];

            setInterval(function (){
                earring.src = frames[count % frames.length];
                count = count + 1;
            }, 2000 );
        }
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            margin: 0 auto;
            width: 1600px;
            font-family: 'Noto Sans KR', sans-serif;
            color: #222;

        }

        .nav,
        .nav2 {
            padding: 5px;
        }

        .nav {
            font-size: small;
        }

        .nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: left;
        }

        .nav2 ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            /* display: flex; */
            justify-content: center;
        }

        .nav li,
        .nav2 li {
            margin-right: 10px;
        }

        .nav a,
        .nav2 a {
            display: block;
            padding: 8px;
            text-decoration: none;
            color: #333;
        }

        .nav a:hover,
        .nav2 a:hover {
            color: red;
        }

        .m {
            text-align: center;
        }

        .a {
            text-align: center;
        }

        #search-box {
            margin-bottom: 10px;
            text-align: right;
        }

        .home {
            width: 80px;
            height: 80px;
        }

        .m a {
            text-align: center;
            color: black;
            text-decoration: none;
        }

        .banner {
            width: 1000px;
            height: 400px;
            float: left;
            margin: 0 20%;
        }

        .ban {
            margin-top: 50px;
            overflow: hidden;
        }

        .new1>img,
        .new2>img {
            width: 150px;
            height: 200px;
            padding: 30px;
        }

        .new {
            text-align: center;
            font-size: x-large
        }

        .new1,
        .new2 {
            display: flex;
            justify-content: center;
        }

        .name>p {
            text-align: center;
            padding: 0 60px;
            display: inline-block;
        }

        .name>p>a {
            color: black;
            text-decoration: none;
        }

        .name>p>a:hover {
            color: red;
        }

        .nav3 ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: left;
            padding: 0 40px;
        }

        .nav3 a {
            display: block;
            padding: 8px;
            text-decoration: none;
            color: #333;
        }

        .nav3 a:hover {
            color: red;
        }

        footer {
            overflow: hidden;
            background-color: rgb(233, 230, 230);
            box-shadow: 0 0 10px rgb(233, 230, 230);
        }

        .left {
            float: left;
            margin-left: 50px;
            font-weight: bold;
        }

        .right {
            margin-top: 65px;
            margin-left: 50px;
            float: left;
        }

        .jo {
            margin-top: 70px;
            margin-left: 50px;
            float: left;
            font-weight: bold;
        }

        .im {
            margin-bottom: 100px;
        }

        h5 {
            position: fixed;
            bottom: 20px;
            right: 20px;
            border: 5px solid black;
            padding: 5px;
            background-color: white;
            border-radius: 5px;
        }

        h5>a {
            text-decoration: none;
            color: black;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
            margin-top: 120px;
        }

        /* effect */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }


        /* Next & previous buttons */
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }

        #bannerimg {
            width: 1000px;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover,
        .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* 메뉴 드롭다운*/
        #main-navigation {
            width: 1600px;
            margin: 0;
            padding: 0; 
        }

        .outer-menu-item {
            width: 150px;
            float: left;
            position: relative;
        }

        .outer-menu-item:hover {
            color: red;
        }
        .outer-menu .menu-title {
            display: block;
            text-align: center;
            padding: 5px 20px;
        }

        .inner-menu-item {
            width: 400px;
            display: block;
            z-index: 5000;
            /* display: inline-block; */
            float: left;
        }

        .inner-menu-item>a {
            width: 400px;
            color: black;
            margin: 10px 30px ;
        }

        .inner-menu {
            display: none;
            position: absolute;
            float: left;
            width: 200px;
            background: white;
            box-shadow: 0 2px 6px rgba(5, 5, 5, 0.9);
            z-index: 1000;
            text-align: left;
        }


        .inner-menu-item>a:hover {
            color: blue;
        }

        a {
            text-decoration: none;
        }

        li {
            list-style: none;
        }

        hr {
            width: 1600px;
        }

        .pull-left {
            width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    <nav class="nav">
        <ul>
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="join.jsp">회원가입</a></li>
            <li><a href="login.jsp">장바구니</a></li>
            <li><a href="login.jsp">마이페이지</a></li>
        </ul>
    </nav>
    <div>
        <h1 class="m"><a href="main.jsp"><img src="홈페이지.jpg" class="home"><b>Diamond Ring</b></a></h1>
    </div>
    <div id="search-box">
        <input type="text" id="search-input" placeholder="상품 검색">
        <button id="search-btn" type="button">검색</button>
    </div>
    <hr>
    <nav class="nav2" id="main-navigation">
        <ul class="outer-menu">
            <li class="outer-menu-item">
                <span class="menu-title"><a href="best.jsp">Best 100</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">3만원 이하 Best</a></li>
                    <li class="inner-menu-item"><a href="#">3만~5만원 Best</a></li>
                    <li class="inner-menu-item"><a href="#">5만~10만원 Best</a></li>
                    <li class="inner-menu-item"><a href="#">10만원 이상 Best</a></li>

                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">New 100</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">3만원 이하 New</a></li>
                    <li class="inner-menu-item"><a href="#">3만~5만원 New</a></li>
                    <li class="inner-menu-item"><a href="#">5만~10만원 New</a></li>
                    <li class="inner-menu-item"><a href="#">10만원 이상 New</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">귀걸이</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">진주 귀걸이</a></li>
                    <li class="inner-menu-item"><a href="#">침형 귀걸이</a></li>
                    <li class="inner-menu-item"><a href="#">원터치 귀걸이</a></li>
                    <li class="inner-menu-item"><a href="#">링 귀걸이</a></li>
                    <li class="inner-menu-item"><a href="#">탄생석 귀걸이</a></li>
                    <li class="inner-menu-item"><a href="#">귀찌</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">목걸이</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">팬던트</a></li>
                    <li class="inner-menu-item"><a href="#">체인 목걸이</a></li>
                    <li class="inner-menu-item"><a href="#">이니셜 목걸이</a></li>
                    <li class="inner-menu-item"><a href="#">진주 목걸이</a></li>
                    <li class="inner-menu-item"><a href="#">롱 목걸이</a></li>
                    <li class="inner-menu-item"><a href="#">탄생석 목걸이</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">반지</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">심플링</a></li>
                    <li class="inner-menu-item"><a href="#">커플링</a></li>
                    <li class="inner-menu-item"><a href="#">탄생석 반지</a></li>
                    <li class="inner-menu-item"><a href="#">진주 반지</a></li>
                    <li class="inner-menu-item"><a href="#">미스링</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">팔찌 / 발찌</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">커플 팔찌</a></li>
                    <li class="inner-menu-item"><a href="#">원석 팔찌</a></li>
                    <li class="inner-menu-item"><a href="#">진주 팔찌</a></li>
                    <li class="inner-menu-item"><a href="#">커플 발찌</a></li>
                    <li class="inner-menu-item"><a href="#">원석 발찌</a></li>
                    <li class="inner-menu-item"><a href="#">이니셜 발찌</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">피어싱</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">일자 바벨 피어싱</a></li>
                    <li class="inner-menu-item"><a href="#">원볼링</a></li>
                    <li class="inner-menu-item"><a href="#">투볼링</a></li>
                    <li class="inner-menu-item"><a href="#">시그먼트링</a></li>
                    <li class="inner-menu-item"><a href="#">라블렛 피어싱</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">헤어</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">머리 핀</a></li>
                    <li class="inner-menu-item"><a href="#">머리 띠</a></li>
                    <li class="inner-menu-item"><a href="#">머리 끈</a></li>
                    <li class="inner-menu-item"><a href="#">헤어 집게</a></li>
                    <li class="inner-menu-item"><a href="#">모자</a></li>
                </ul>
            </li>
            <li class="outer-menu-item">
                <span class="menu-title"><a href="#">쥬얼리 세트</a></span>
                <ul class="inner-menu">
                    <li class="inner-menu-item"><a href="#">탄생석 세트</a></li>
                    <li class="inner-menu-item"><a href="#">다이어몬드 세트</a></li>
                    <li class="inner-menu-item"><a href="#">이니셜 세트</a></li>
                    <li class="inner-menu-item"><a href="#">진주 세트</a></li>
                    <li class="inner-menu-item"><a href="#">실버 세트</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <hr>
    <div class="slideshow-container">

        <div class="mySlideDiv fade active">
            <img src="배너.png" class="bannerimg">
        </div>

        <div class="mySlideDiv fade">
            <img src="배너2.png" class="bannerimg">
        </div>

        <div class="mySlideDiv fade">
            <img src="배너3.png" class="bannerimg">
        </div>

        <a class="prev" onclick="prevSlide()">&#10094;</a>
        <a class="next" onclick="nextSlide()">&#10095;</a>

    </div>
    <div>
        <h3 class="new"><br><br><br> <img src="뉴.png"></h3>
        <div>
            <div class="new1">
                <img id="cubic" src="귀걸이/큐빅4.jpg">
                <img src="쥬얼리세트/큐빅쥬얼리세트.jpg">
                <img src="귀걸이/꽃.jpg">
                <img src="반지/반지4.jpg">
            </div>
            <div align="center " class="name">
                <p><a href="detailedpage.jsp">큐빅 귀걸이 <br> 19,000원</a></p>
                <p><a href="#">큐빅 주얼리세트 <br> 79,000원</a></p>
                <p><a href="#">꽃 귀걸이 <br> 17,000원</a></p>
                <p><a href="#">예술가 반지 <br> 49,000원</a></p>
            </div>
            <div class="new2" style="text-align: center;">
                <img src="팔찌/3.jpg">
                <img src="귀걸이/귀걸이5.jpg">
                <img src="반지/반지8.jpg">
                <img src="귀걸이/귀걸이2.jpg">
            </div>
            <div align="center " class="name">
                <p><a href="#">꾸로밍 팔찌 <br> 35,000원</a></p>
                <p><a href="#">눈꽃 귀걸이 <br> 19,000원</a></p>
                <p><a href="#">큐빅리본 반지 <br> 17,000원</a></p>
                <p><a href="#">방울 귀걸이<br> 39,000원</a></p>
            </div>
        </div>
        <div>
            <h3 class="new"><br><br><br> <img src="베스트.png"></h3>
            <div class="im">
                <div class="new1">
                    <img src="쥬얼리세트/세트1.jpg">
                    <img src="목걸이/하트.jpg">
                    <img src="귀걸이/진주.jpg">
                    <img src="반지/반지10.jpg">
                </div>
                <div align="center " class="name">
                    <p><a href="#">다이아 쥬얼리 <br> 89,000원</a></p>
                    <p><a href="#">하트 목걸이 <br> 29,000원</a></p>
                    <p><a href="#">분홍 진주 <br> 16,000원</a></p>
                    <p><a href="#">로즈핑크 반지 <br> 39,000원</a></p>
                </div>
                <div class="new2" style="text-align: center;">
                    <img src="반지/반지2.jpg">
                    <img src="귀걸이/귀걸이4.jpg">
                    <img src="팔찌/5.jpg">
                    <img src="귀걸이/보라.jpg">
                </div>
                <div align="center " class="name">
                    <p><a href="#">에인젤 반지 <br> 49,000원</a></p>
                    <p><a href="#">진주 귀걸이 <br> 69,000원</a></p>
                    <p><a href="#">티아라 팔찌 <br> 28,000원</a></p>
                    <p><a href="#">디에블 귀걸이<br> 49,000원</a></p>
                </div>
            </div>
        </div>
        <div>
            <h5><a href="#top">TOP▲</a></h5>
        </div>
        <div>
            <hr>
            <nav class="nav3">
                <ul class="ma1">
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                    <li><a href="#">이용안내</a></li>
                </ul>
            </nav>
            <hr>
        </div>
        <footer>
            <div class="left">
                <h1>02-1234-2480</h1>
                <h4>고객센터 운영시간</h4>
                <p>평일 - 오전 09:00 ~ 오후 06:00 <br>점심 - 오후 12:00 ~ 오후 01:00 <br>토 / 일 / 공휴일 휴무</p>
            </div>
            <div class="jo">
                <P>상호명:(주식회사) Diamond Ring <br>대표:박명연</P>
                <p>사업자 등록번호 <br> 123-45-67890</p>
            </div>
            <div class="right">
                <h4>위치</h4>
                <p>서울 용산구 보광로 73</p>
            </div>
        </footer>
</body>

</html>