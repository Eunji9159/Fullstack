<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿</h1>
	<p>자바코드를 작성하는부분</p>
	<!-- html주석 -->
	<%// 스크립트릿
	
		// 내장객체
		System.out.println(out);
	int su=1234;
	for(int i=0; i<10; i++){
		out.print(su+"출력<br>");
	}
	%>
	<p>또다른 스크립트릿</p>
	<%
		int su2=4321;
		out.println("<h2>다른 스크립트릿"+su+"</h2>");	
		out.println(new java.util.Date());
	%>
</body>
</html>








