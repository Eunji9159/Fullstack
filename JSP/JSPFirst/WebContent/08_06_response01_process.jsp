<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");

		if (userid.equals("admin") && password.equals("1234")) {//둘다 참이어야함.
			response.sendRedirect("08_06_response01_success.jsp"); // 페이지 이동하고 url이 "///"로 바뀜 / reponse : 페이지 이동, 응답하는 페이지에 대한 웹문서 파일을 설정할 때
		} else {
			response.sendRedirect("08_06_response01_failed.jsp");
		}
	%>
</body>
</html>