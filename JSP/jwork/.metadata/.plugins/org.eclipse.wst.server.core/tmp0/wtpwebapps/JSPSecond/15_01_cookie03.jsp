<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 세션과 다르게 해당쿠키마다 시간설정해줄 수 있음. 초 단위.

		for (int i = 0; i < cookies.length; i++) { // utc기준. 9시간 차이 남. +9시간 해주면 된다!
			//쿠키만료시간 변경 (1초단위) 
			cookies[i].setMaxAge(60*60*24); //하루
			//쿠키삭제 (0또는 음수로 지정)
// 			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("15_01_cookie02.jsp");
	%>
</body>
</html>