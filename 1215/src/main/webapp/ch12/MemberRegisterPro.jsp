<%@page import="ch12.member.LogonDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="ch12.member.LogonDataBean">
	<jsp:setProperty property="*" name="member"/>
</jsp:useBean>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	member.setRegDate(now);
	
	LogonDBBean db = LogonDBBean.getInstane();
	db.insertMember(member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><jsp:getProperty property="id" name="member"/>님의 회원가입을 축하합니다.</h1>
	<!-- 
		LogonDataBean 객체의 
	 -->
</body>
</html>