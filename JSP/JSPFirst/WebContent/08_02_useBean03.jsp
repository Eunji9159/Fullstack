<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%-- <jsp:useBean id="person" class="com.dto.Person" /> --%>
	<jsp:useBean id="person" class="com.dto.Person" scope="request" />
<%-- 	<%@page import="com.dto.Person" %> --%>
<%-- 	<%Person person1 = new Person();  %> --%>
 	<p>	아이디 : <%=person.getId()%>  <%--20181004 --%>
 	<p>	이 름 : <%=person.getName()%> <%--홍길순 --%>
</body>
</html>