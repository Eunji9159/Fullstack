<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames(); /* Enumeration : 열거형 /  getAttributeNames : 속성 키 값을 가져옴.  */
		int i = 0;

		while (en.hasMoreElements()) { // 있는지 없는지 여부 확인. 가지고 있을 시 아래 실행.
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>