<%@ page contentType="text/html; charset=utf-8" %>
<% 
	request.setCharacterEncoding("urf-8");
	String id = request.getParameter("memberId");
	String pw = request.getParameter("memberPass");
	if (id != null && id.equals("admin") && pw != null && pw.equals("1234")) {
		response.sendRedirect("08_07_index.jsp");
	} else {
%>
<html>
<head><title>로그인에 실패</title></head>
<body>
잘못된 아이디입니다.
</body>
</html>
<%
	}
%>
