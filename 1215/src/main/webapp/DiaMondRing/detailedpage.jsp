<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diamond Ring</title>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script>
        $(document).ready(function(){
            $('#spreadBtn04').click(function(){
                if($("#hiddenList03").is(":visible")){
                    $("#spreadBtn04").toggleClass("icon-emo-sunglasses icon-emo-grin");
                    $("#hiddenList03").slideUp();
                }else{
                    $("#spreadBtn04").toggleClass("icon-emo-grin icon-emo-sunglasses");
                    $("#hiddenList03").slideDown();
                }
            });
        });

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
            var 귀걸이 = document.getElementById('cubic');
            var frames = [
                "귀걸이/큐빅.jpg", "귀걸이/큐빅1.jpg", "귀걸이/큐빅2.jpg", 
                "귀걸이/큐빅3.jpg", "귀걸이/큐빅4.jpg", 
            ];

            setInterval(function (){
                귀걸이.src = frames[count % frames.length];
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

        .nav4{
            padding: 5px;
        }
        
        .nav4 ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .nav4 li {
            margin-right: 10px;
        }


        .nav4 a {
            display: block;
            padding: 8px;
            text-decoration: none;
            color: #333;
        }

        .nav4 a:hover {
            color: red;
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
        .im{
            margin-bottom: 100px;
        }
        .s{
            margin: 0 auto;
            text-align: center;
        }
        .pagination {
            display: flex;
            color: black;
            justify-content: center;
            list-style-type: none;
            padding: 0;
            margin: 40px;
            font-size: large;
        }
        .page-item {
            margin-right: 20px;
        }
        .page-item:last-child {
            margin-right: 0;
        }
        .page-link {
            color: black !important;
        }
        .page-link:hover {
            text-decoration: none;
        }
        .cubic{
            margin: 0 auto;
            width: 300px;
            height: 450px;
        }
      
        .cubic1, .cubic2{
            display: inline-block;
        }
        .cubic2{
            margin-left: 20px;
            vertical-align:top;
            margin-top: 90px;
            line-height: 35px;
        }

        .re1{
            text-align: right;
            margin-right: 500px;
            margin-bottom: 200px;
        }
        #refund{
            margin: 200px 0;
        }
        .pc1{
            margin-right: 30px;
        }
        .mmm{
            margin: 0 auto;
            display: table; 
            align-content: center;
        }
        h5{
            position: fixed;
            bottom: 20px;
            right: 20px;
            border: 5px solid black;
            padding: 5px;
            background-color: white;
            border-radius: 5px;
        }
        h5>a{
            text-decoration: none;
            color: black;
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
            <% 
    	if(id==null || id.equals("")){
    	%>
    		<li><a href="login.jsp">로그인</a></li>
    		<li><a href="join.jsp">회원가입</a></li>
    		<li><a href="#">장바구니</a></li>
            <li><a href="#">마이페이지</a></li>
    	<%	
    	}else{
        %>
        	<li><%= id %>회원님</li>
            <li><a href="SessionLogout.jsp">로그아웃</a></li>
            <li><a href="#">회원가입</a></li>
            <li><a href="shoppingcart.jsp">장바구니</a></li>
    		<li><a href="mypage.jsp">마이페이지</a></li>
        <% 
    	}
        %>
                      
        </ul>
    </nav>
    <div>
    <% 
    	if(id==null || id.equals("")){
    	%>
    		<h1 class="m"><a href="main.jsp"><img src="홈페이지.jpg" class="home"><b>Diamond Ring</b></a></h1>
    	<%	
    	}else{
        %>
        	<h1 class="m"><a href="main1.jsp"><img src="홈페이지.jpg" class="home"><b>Diamond Ring</b></a></h1>
        <% 
    	}
        %>
        
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
    <div>
        <div class="mmm">
            <div class="cubic1">
                <img id="cubic" src="귀걸이/큐빅4.jpg" class="cubic">
            </div>
            <div class="cubic2">
                <h2>크리스탈 큐빅 귀걸이</h2>
                <h3>19,000원</h3>
                <p>상품코드 : DR-23045123</p>
                <p>배송비 : 3000원 </p>
                <p>조건부 무료배송 (3만원 이상 구매시)</p>
                <p>수량 :
                    <select name="number">
                        <option value="number1">1</option>
                        <option value="number2">2</option>
                        <option value="number3">3</option>
                        <option value="number4">4</option>
                        <option value="number5">5</option>
                        <option value="number5">6</option>
                        <option value="number5">7</option>
                        <option value="number5">8</option>
                        <option value="number5">9</option>
                        <option value="number5">10</option>
                    </select></p>
                <p>색상 : <select name="number">
                    <option value="number1">핑크</option>
                    <option value="number2">골드</option>
                    <option value="number3">실버</option>
                    <option value="number4">파랑</option>
                </select>
                </p>
                <div class="purchase">
                	<% 
    					if(id==null || id.equals("")){
    						
    				%>
    				<a href="login.jsp"><input type="button" value="바로구매" class="pc1"></a>
    				<a href="login.jsp"><input type="button" value="장바구니"></a>
    				<%	
    					}else{
        			%>
        				<a href="buy.jsp"><input type="button" value="바로구매" class="pc1"></a>
        				<a href="shoppingcart.jsp"><input type="button" value="장바구니"></a>
        				
        			<% 
    					}
        			%>
                    
                    
                </div>
            </div>
        </div>
        <hr>
        <nav class="nav4">
            <ul class="ma1">
                <li><a href="#impo">상세정보 </a></li>
                <li><a href="#review">리뷰</a></li>
                <li><a href="#q&a">Q & A</a></li>
                <li><a href="#refund">교환 / 환불 정보</a></li>
            </ul>
        </nav><hr>
        <div class="s">
            <span class="icon-emo-sunglasses" id="spreadBtn04">
                <br>
                <img src="상세페이지1.png" id="impo">
                <p>*자세히 보고 싶으면 아래 상세정보 펼쳐보기를 눌러주세요</p>
                <br>
                <br>
                <hr>
                <br>
                <h3>상세정보 펼쳐보기 ▽</h3>
                <br>
                <hr>
            </span>
            <ul id="hiddenList03" class="example01" style="display: none;">
                
                <img src="상세페이지2.png" id="impo">
            </ul>
            <img src="리뷰.png" id="review">
            <div class="pagination-container">
                <ul class="pagination">
                  <li class="page-item">
                    <a href="#" class="page-link">1</a>
                  </li>
                  <li class="page-item">
                    <a href="#" class="page-link">2</a>
                  </li>
                  <li class="page-item">
                    <a href="#" class="page-link">3</a>
                  </li>
                  <li class="page-item">
                    <a href="#" class="page-link">4</a>
                  </li>
                </ul>
                <div class="re1">
                    <input type="button" value="리뷰남기기" class="re">
                </div>
            </div>
            <img src="Q&A.png" id="q&a">
            <img src="환불.png" id="refund">
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