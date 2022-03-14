<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 세션아이디까지 쿠키로 가져옴. 세션이 실행되었으니까.
	if(cookies!=null){
		out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
		out.println("==========================<br>");
		for (int i = 0; i < cookies.length; i++) {
			out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("---------------------------------------------<br>");
		}
	}else{
		out.print("쿠키가 없습니다.");
	}
	%>
</body>
</html>