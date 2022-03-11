<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Calendar" %>
<html>
<head><title>현재 시간</title></head>
<body>
<h1>Attribute속성 사용하여 값 설정하고 받기</h1>
<%
	Calendar cal = (Calendar) request.getAttribute("time");
%>
현재 시간은  <%= cal.get(Calendar.HOUR)>9?cal.get(Calendar.HOUR):"0"+cal.get(Calendar.HOUR) %>시
		 <%= cal.get(Calendar.MINUTE)>9?cal.get(Calendar.MINUTE):"0"+cal.get(Calendar.MINUTE) %>분
		 <%= cal.get(Calendar.SECOND)>9?cal.get(Calendar.SECOND):"0"+cal.get(Calendar.SECOND) %>초 입니다.
</body>
</html>
