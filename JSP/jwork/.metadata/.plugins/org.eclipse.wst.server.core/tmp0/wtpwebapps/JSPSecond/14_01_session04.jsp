<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>Session</title>
</head>
<body>
	<p><h4>----- 세션을 삭제하기 전 -----</h4> <!-- 세션 삭제하는 방법 2가지 존재 / removeAttribute : 각각 한개씩 삭제. 브라우저가 꺼지기 전까지는 남아있음. -->
	<%
		String user_id = (String) session.getAttribute("userID"); //"admin"
		String user_pw = (String) session.getAttribute("userPW"); // "1234"
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");

		//단일 세션 삭제
		session.removeAttribute("userID"); // removeAttribute : 한가지만 선택해서 삭제(단일삭제). userID니까 admin날림.
	%>
	<p><h4>----- 세션을 삭제한 후 -----</h4>
	<%
		user_id = (String) session.getAttribute("userID"); // 날려버려서 없으니까 null.
		user_pw = (String) session.getAttribute("userPW"); // 1234찍음.
		out.println("설정된 세션 이름 userID : " + user_id + "<br>"); //null
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>"); // 1234
	%>
</body>
</html>