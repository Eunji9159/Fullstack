<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>구구단출력</h1>
	<p>표에 담아서 출력</p>
	<table>
	<tr>
		<td>1단</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		
	<tr>
		<%
		for(int i=1; i<10; i++){
		>%
			<tr>
	
			out.println("<tr>");
			for(int i=2; i<10; i++){
				out.println("<td>"+i+"x"+i+"x"+j+"</td>");
			}
			out.println("</tr>");
		}
		%>
	</tr>
		
	
		
</body>
</html>

	
	
	
	
