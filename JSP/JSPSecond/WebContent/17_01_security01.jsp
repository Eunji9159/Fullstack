<%@ page contentType="text/html; charset=utf-8"%>
<% session.setAttribute("uid", request.getRemoteUser()) ;%>
<html>
<head>
 <title>Security</title> <!-- 인증, 권한 부여 기능 / 허가된 사용자만이 허가한 url에 접근할 수 있도록 한 것. 데이터를 가로채지 못하는 기능도 함. -->
</head>
<body>
	<p>인증 성공했습니다.</p><br>
	<button onclick="location.href='17_01_security02.jsp'">인증 정보 확인하기</button>
	<button onclick="location.href='17_01_logout.jsp'">로그아웃</button>
</body>
</html>