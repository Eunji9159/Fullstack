<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("1234")) {
			//쿠키 객체 생성
			Cookie cookie_id = new Cookie("userID", user_id); // ("userID", user_id) = 키,밸류
			Cookie cookie_pw = new Cookie("userPW", user_pw);
// 			cookie_id.setMaxAge(60*60*24*1); //유효기간 1일 설정 / 쿠키는 시간을 설정하면 브라우저를 닫아도 유효시간이 없어지지 X.  
			//응답객체에 쿠키 추가(클라이언트 브라우저에 저장)
			response.addCookie(cookie_id); // 실질적으로 브라우저가 쓰이는 시간.
			response.addCookie(cookie_pw);
			out.println("쿠기 생성이 성공했습니다<br>");
			out.println(user_id + "님 환영합니다");
		} else {
			out.println("쿠키 생성이 실패했습니다");
		}
	%>
</body>
</html>