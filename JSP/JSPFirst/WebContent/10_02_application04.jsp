<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String name = request.getParameter("abc"); // fruit
	
	if (name != null) {
// 		application.setAttribute(name, "orange"); /* 속성을 설정하라. 매개변수 2개 들어감(키,밸류)  */
// 		application.setAttribute("fruit", "orange");
		session.setAttribute(name, "orange");
// 		session.setAttribute("fruit", "orange");
	}
%>
<!DOCTYPE html>
<html>
<head><title>application 속성 지정</title></head>
<body>
<%
	if (name != null ) {
%>
application 기본 객체의 속성 설정:
 <%= name %> = <%= application.getAttribute(name) %>
<%
	} else {
%>
application 기본 객체의 속성 설정 안 함<br>
쿼리스트링으로 추가하고 재실행해주세요.<br>
추가할 문자열 : ?abc=fruit
<%
	}
%>
</body>
</html>
