<%@ page contentType = "text/html; charset=utf-8" %>
<%
	session.invalidate(); //설정한 세션 모두 삭제.
%>
<html>
<head><title>로그아웃</title></head>
<body>

로그아웃하였습니다.

<a href="sessionLoginForm.jsp">홈으로</a>
<a href="sessionLoginCheck.jsp">페이지 이동하기</a>
</body>
</html>
