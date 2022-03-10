<%@ page contentType="text/html; charset=utf-8"%> <!-- jsp파일에서 인코딩(charset=utf-8)해줘야 한글에 대한 정보 제대로 받아들여옴. -->
<%-- <%@ page contentType="text/html"%> --%>
<%-- <%@ page pageEncoding="utf-8"%> --%>
<%@ page import="java.util.*" %>  <%-- 지시태그 무언가를 끌어올 때. --%>
<!Doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Directives Tag</title>
</head>
<body>
	<%
	Date d3 = new Date();
	%>
	오늘의 정보 : <%=d3%><br> 
	오늘의 정보 : <%=d3.toLocaleString()%><br>  <%-- locale: 지역(=국가)국가표기법으로 바꿔서 표현된다. --%>
</body>
</html>