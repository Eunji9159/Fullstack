<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<% //컨트롤러 (요청하고, 요청받고) 페이지 - 모델연결할건지, 메서드사용할건지? 결정.
			request.setCharacterEncoding("UTF-8");
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>" + name + " </td>\n");
				String paramValue = request.getParameter(name);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>