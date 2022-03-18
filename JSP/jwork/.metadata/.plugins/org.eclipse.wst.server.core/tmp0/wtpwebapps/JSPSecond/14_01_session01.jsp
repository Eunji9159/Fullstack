<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title> <!-- session : 브라우저가 열려있는 동안 살아있는 페이지이다. -->
</head>
<body>
	<form action="14_01_session01_process.jsp" method="POST"> <!-- 인코딩 설정해줄 것. -->
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	<input type="submit" value="전송"> <!-- submit버튼 누르면 post방식으로 "14_01_session01_process.jsp"여기로 이동. -->
	</form>
</body>
</html>