<%@ page contentType = "text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head><title>application 속성 지정</title></head>
<body>
<%-- 받은 값: <%= application.getAttribute("fruit") %> <!-- attribute를 설정한 것을 가져와라.  --> --%>
받은 값: <%= session.getAttribute("fruit") %>
</body>
</html>
