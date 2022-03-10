<%@ page contentType="text/html; charset=utf-8"%>
<!Doctype html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h2>이 파일은 first.jsp입니다.</h2>
	<p>======first.jsp페이지의 시작부분입니다. =========</p>
<%-- 	<jsp:forward page="08_01_second.jsp" /> 	<!-- forward : 기존에 있던 것을 싹다 날려버리고 그 페이지로 이동해서 그걸 표현함. 단,url을 반영시키지 않음.  --> --%>
<%-- 	<jsp:include page="08_01_second.jsp" /> include : 안에 파일 넣음/ 액션태그('jsp:') : 각각 페이지를 실행하되 위에서부터 그대로 읽다가 해당부분을 읽음.  --%>
 	<%@ include file="08_01_second.jsp"%> --%> <!-- 소스코드 포함됨. 파일을 먼저 포함시키고 그다음에 읽음. -->
<!-- 'jsp:' 페이지 이동방식 / 대표적인 redirecting방식 - html : <a>,
						forward : <form> 안에 기술   -->	
	
	
	<p>======first.jsp페이지의 끝입니다. =========</p>
</body>
</html>