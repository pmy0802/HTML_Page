<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 폼</h2>
	
	<form action="MemberRegisterPro.jsp" method="post">
		* ID: <input type="text" name="id" maxlength="50"><br><br>
		* PWD: <input type="password" name="passwd" maxlength="20"><br><br>
		* Name: <input type="text" name="name" maxlength="20"><br><br>
		<button type="submit">회원가입</button>
	</form>
</body>
</html>