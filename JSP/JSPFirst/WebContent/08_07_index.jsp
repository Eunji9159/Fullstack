<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>3장 예제</title></head>
<body>
3장의 인덱스 페이지 : <%=request.getParameter("name") !=null ? request.getParameter("name") : "로그인에서 이동 됨."  %>
</body>
</html>
