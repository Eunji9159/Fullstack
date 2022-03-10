<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<title>Directives Tag</title> 
</head>
<body>
 	<h4>에러가 발생되었습니다.</h4> <!-- isErrorPage 속성은 다른 jsp페이지의 에러페이지로 사용하게 될 것인지를 결정하는 것. -->
	<h5>exception 내장 객체 변수</h5>
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>