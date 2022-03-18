<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setAttribute("person", "호동이"); // 표현식은 값이 단일값일 경우 key만 와도 값을 가져올 수 있음.
%>
<html>
<head><title>EL의 기본객체</title></head>
<body>
<h2>기본객체를 사용한 EL(Expression Language: 표현언어)</h2>
<fmt:requestEncoding value="utf-8"/> <!-- post방식으로 받을 때 인코딩방식. -->
요청 URI: ${pageContext.request.requestURI}<br> <!--URI: context부터 경로까지  -->
<%-- request에 설정한  person 속성: ${requestScope.person}<br><hr> --%>
request에 설정한  person 속성: ${person}<br><hr>
request에 설정한  person 속성: <%= request.getAttribute("person")%><br><hr>
<form action="16_01_el01_proc.jsp" method="post">
	<input type="text" name="code" >
	<input type="submit" value="전송">
</form>
</body>
</html>
