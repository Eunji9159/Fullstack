<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<form action="08_06_response01_process.jsp" method="post"><!--post는 인코딩해줘야함.  -->
		<p>	아 이 디 : <input type="text" name="id"><!-- process에 9번줄 id와 값이 같아야 함. -->
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	<input type="submit" value="전송"> <!-- form태그는 자기를 감싸고 있는 action을 실행한다. -->
	</form>
</body>
</html>