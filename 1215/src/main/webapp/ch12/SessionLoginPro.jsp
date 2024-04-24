<%@page import="ch12.member.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean db = LogonDBBean.getInstane();
	int result = db.userCheck(id, passwd);
	//result=0(비번틀림), 1(로그인성공), -1(아이디가 존재하지 않음)
	
	if(result==1){
		session.setAttribute("id", id);
		response.sendRedirect("SessionMain.jsp");
	}else if(result==0){
%>
		<script>
			alert("비밀번호가 잘못되었습니다.")
			history.go(-1);
		</script>
<%
	}else{
%>
		<script>
			alert("ID가 존재하지 않습니다.")
			history.go(-1);
		</script>
<%			
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>