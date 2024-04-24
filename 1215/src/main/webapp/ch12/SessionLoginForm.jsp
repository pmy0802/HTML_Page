<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function register() {
		location.href="MemberRegisterForm.jsp"
	}
</script>
</head>
<body>
	<h3>LogIn</h3>
	
	<form action="SessionLoginPro.jsp" method="post">
		* ID: <input type="text" name="id" maxlength="50"><br><br>
		* PWD: <input type="password" name="passwd" maxlength="20"><br><br>
		<button type="submit">로그인</button>
		<button type="button" onclick="register()">회원가입</button>
	</form>
</body>
</html>