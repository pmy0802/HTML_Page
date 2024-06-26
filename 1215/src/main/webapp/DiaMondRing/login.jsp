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
        // 메뉴 드롭다운 
        $(document).ready(function () {
            $(".outer-menu-item").hover(function () {
                $(this).find(".inner-menu").show();
            }, function () {
                $(this).find(".inner-menu").hide();
            });
        });
        
        function register() {
		location.href="MemberRegisterForm.jsp"
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
        .left{
            float: left;
            margin-left: 50px;
            font-weight: bold;
        }
        .right{
            margin-top: 65px;
            margin-left: 50px;
            float: left;
        }
        .jo{
            margin-top: 70px;
            margin-left: 50px;
            float: left;
            font-weight: bold;
        }
        .login-container {
            width: 300px;
            margin: 0 auto;
            padding: 50px;
            justify-content: center;
            align-items: center;
            background-color: #f8f8f8;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 200px;
        }

        .login-container h2 {
            text-align: center;
        }

        .login-form {
            margin-top: 20px;
        }

        .login-form input {
            display: block;
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-form button {
            display: block;
            width: 320px;
            padding: 10px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #555;
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
        
        .login-form a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: underline;
            color: #333; /* Set the color you prefer for the underline */
            cursor: pointer;
            text-align: center;
        }

        .login-form a:hover {
            color: red; /* Set the color you prefer for the underline on hover */
        }
        

    </style>
</head>
<body>
    <nav class="nav">
        <ul>
    		<li><a href="login.jsp">로그인</a></li>
            <li><a href="join.jsp">회원가입</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">마이페이지</a></li>
        </ul>
    </nav>
    <div>
        <h1 class="m"><a href="main.jsp"><img src="홈페이지.jpg" class="home"><b>Diamond Ring</b></a></h1>
    </div>
    <div id="search-box">
        <input type="text" id="search-input" placeholder="상품 검색">
        <button id="search-btn" type="button">검색</button>
    </div><hr>
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
    </nav><hr>
    <br><br><br><br><br><br>
    <div class="login-container">
        <h2>로그인</h2>
        <form class="login-form" action="SessionLoginPro.jsp" method="post">
            <input type="text" name="username" placeholder="아이디">
            <input type="password" name="password" placeholder="비밀번호">
            <button type="submit">로그인</button>
            <a href="join.jsp">회원가입</a>
        </form>
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
        </nav><hr>
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