<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if (id.equals(password)) {
		session.setAttribute("MEMBERID", id);
%>
<html>
<head><title>로그인성공</title></head>
<body>

로그인에 성공했습니다.
<a href="sessionLoginCheck.jsp">페이지 이동하기</a>

</body>
</html>
<%
	} else { // 로그인 실패시
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1); // 이전 페이지로 하나 이동!
</script>
<%
	}
%>
