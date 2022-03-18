<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID"); /* object형식은 가져올 때 'getKey'형식으로 가져옴. 따라서 userID(admin)를 가져옴 */
		String user_pw = (String) session.getAttribute("userPW"); /*             ``						따라서 userPW(1234)를 가져옴  */

		out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>");
		out.println("설정된 세션의 속성 값 [2] : " + user_pw);
	%>
</body>
</html>