<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>페이지 이동</h1>
	<a href="http://192.168.0.66:8080/day31/ex05.jsp?id=admin&pw=abcd">go ex05.jsp</a>
	<form action="ex05.jsp">
		<input type="text" name="id" value="aaaa"><br>
		<!-- <select name="pw" size="4">
			<option value="i1">item1</option>
			<option value="i2">item2</option>
			<option value="i3">item3</option>
			<option value="i4">item4</option>
		</select>
		
		<input type="radio" name="pw" value="aaaa">checked>
		<input type="radio" name="pw" value="bbbb">
		<input type="radio" name="pw" value="cccc">
		<input type="checkbox" name="pw" value= "aaaa">  
		<input type="hidden" name="pw" value="aaaa"><br> 
	 	<input type="password" name="pw" value="aaaa"><br>  -->
		<textarea rows="5" cols="10"name="pw">aaaa</textarea><br> 
		<input type="submit" value="내가">
	</form>
</body>
</html>