<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request 내장객체</h1>
	<%
		String addr=request.getRemoteAddr(); // 접속한 ip
		String host=request.getRemoteHost();
		int port=request.getRemotePort(); // 접속한 port
		System.out.println(addr);
		System.out.println(host);
		System.out.println(port);
		//http://192.168.0.1:8080/day31/ex05.jsp?id=admin&pw=abcd
		// 쿼리스트링의 파싱
		String id=request.getParameter("id"); // 물음표 뒤에 내용. 그것을 가져오는 것
		String pw=request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
	%>
</body>
</html>