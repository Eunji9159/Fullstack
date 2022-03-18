<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		//  에러 코드표 참조 사이트:  https://developer.mozilla.org/ko/docs/Web/HTTP/Status
		response.sendError(404, "요청 페이지를 찾을 수 없습니다");//에러페이지
	%>
</body>
</html>