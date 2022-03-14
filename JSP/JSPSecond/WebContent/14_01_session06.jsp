<%@ page contentType="text/html; charset=utf-8"%>

<html>
<head>
<title>Session</title>
</head>
<body>
	<p> <h4>----- 세션을 삭제하기 전 -----</h4>
	<%
		String user_id = (String) session.getAttribute("userID"); //"admin"
		String user_pw = (String) session.getAttribute("userPW"); //"1234"
		
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
		
		if (request.isRequestedSessionIdValid() == true) { //우리가 요청했던 세션아이디가 유효합니까(살이있습니까)?
			out.print("세션이 유효합니다.");
		}else {

			out.print("세션이 유효하지 않습니다.");
		}		
		//다중 세션삭제
		session.invalidate(); // 설정해놓은 세션 전부 다 삭제해버림.  ※ 중간에 삭제하면 세션값 같음. but, 새로고침하면 로그아웃개념이 되어서 새로운 세션값 생성됨.
	%>
	<p> <h4>----- 세션을 삭제한 후 -----</h4>
	<%		
		if (request.isRequestedSessionIdValid() == true) {
			out.print("세션이 유효합니다.");
		}else {

			out.print("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>