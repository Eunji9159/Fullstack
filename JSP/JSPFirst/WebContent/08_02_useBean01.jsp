<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" /> <!-- useBeand이라는 객체 생성. id=date라는 '객체명', class는 패키지명까지 기술. -->
<%-- 	<%@page import="java.util.Date" %> --%>
<%-- 	<% --%>
<!-- Date date1 = new Date(); -->
<%-- 	%> --%>
	<p><% out.print("오늘의 날짜 및 시각");%>	
	<p><%=date.toLocaleString()%><br><br>
	<hr>
	
	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
<%-- 	<%@page import="com.dto.MemberBean" %> --%>
<%-- 	<% MemberBean memberBean1 = new MemberBean(); %> --%>
<%-- 	<% --%>
		memberBean.setId(1);
		memberBean.setName("김효진");
		out.print("아이디: "+memberBean.getId()+"<br>");
		out.print("이름: " +memberBean.getName());
	%>
</body>
</html>
