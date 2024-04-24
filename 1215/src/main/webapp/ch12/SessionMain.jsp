<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = (String)session.getAttribute("id");
	if(id==null || id.equals("")){
		response.sendRedirect("SessionLoginForm.jsp");
	}else{
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= id %>님 로그인 되었습니다.</h2>
	<form action="SessionLogout.jsp" method="post">
		<button type="submit">로그아웃</button>
	</form>
</body>
</html>
<% 		
	}
%>