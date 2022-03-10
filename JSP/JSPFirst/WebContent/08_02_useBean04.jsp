<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%-- <jsp:useBean id="person" class="com.dao.Person" /> --%>
	<jsp:useBean id="person" class="com.dto.Person" scope="request" />
	<p>	아이디 : <%=person.getId()%><br> 20181004
	<p>	이 름 : <%=person.getName()%><br><hr> "홍길순"
		<%
			person.setId(20182005); 
			person.setName("고희동");
		%>
	<p>	아이디 : <%=person.getId()%><br> 20182005
	<p>	이 름 : <%=person.getName()%><br><hr> "고희동"
		<jsp:include page="08_02_useBean03.jsp"/>
</body>
</html>
