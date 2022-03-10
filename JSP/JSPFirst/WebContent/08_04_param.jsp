<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>파라미터 전송 테스트</h3>
	<p>request객체 표현</p><br>
	jsp:param 액션태그로 전송한  데이터는 request영역을 공유하며,<br>
	데이터 전송은 눈에 보이지는 않지만 쿼리스트링방식처럼 url뒤에 key=value형식으로 붙여 보낸다.<br><br>
 	<jsp:forward page="08_04_requestInfo.jsp"> <%-- forward : url은 바뀌지 않고 데이터는 (get방식으로) 전송이 된다. --%>
		<jsp:param name="id" value="admin" />
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>' /> <!-- 유니코드 방식으로 변환시킴.-->
	</jsp:forward>
<%-- 	<jsp:include page="08_04_requestInfo.jsp"> --%>
<%-- 		<jsp:param name="id" value="admin" /> --%>
<%-- 		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>' /> --%>
<%-- 	</jsp:include> --%>
<!-- 	<form action="08_04_requestInfo.jsp" method="post"> -->
<!-- 		<input type="text" name="id" value="admin"><br> -->
<%-- 		<input type="text" name="name" value="<%=java.net.URLEncoder.encode("관리자")%>"><br> --%>
<!-- 		<input type="submit" value="전송" > -->
<!-- 	</form> -->
	
</body>
</html>