<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.lang.*"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내용</h1>
	<%
		// 스크립트릿
		// 내장 객체 = 스크립트릿에서 제공되는 참조변수
		
		func();
		
	%>
	<%!
		// 선언부
		int su=1234;
		
		void func(){
			request.getPatameter("");
			System.out.println("호출");
		}
	%>
	
</body>
</html>