<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- 태그라이브러리 사용방법: 1.라이브러리 다운받아서 넣어준다. 2.지시태그 기술해준다.
																	다운방법 : mvnrepository.com -> jstl ->  
																	가장 조회수 많은 2.JSTL -> 1.2v-files-jar파일 다운 -> WebContent/WEB-INF/lib 아래에 넣어주기-->
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<c:forEach var="k" begin="1" end="10" step="1">
<%--  		<p><c:out value="${k}"/>번입니다.</p>   'c:out' : out.println(k) 처럼 출력 기능을 한다. --%>
  		<p>${k}번입니다.</p>   <%-- 'c:out' : out.println(k) 처럼 출력 기능을 한다. 
										      보안적인 코드 출력 --%>
	</c:forEach>  
	

</body>
</html>