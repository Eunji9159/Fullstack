<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ page isELIgnored="true"%> --%>       <%--EL : 표현식 언어 --%>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%
 		request.setAttribute("RequestAttribute", "request 내장 객체");  // (속성설정=)setAttribute("key",value)
	%>
	
 	${requestScope.RequestAttribute}  <%-- 표현식 :'${}'형식. --%>
</body>
</html>