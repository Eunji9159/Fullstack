<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head><title>EL의 기본객체</title></head>
<body>
<h2>기본객체를 사용한 EL</h2>
<fmt:requestEncoding value="utf-8"/>
<!-- param.code => request.getParameter("code") -->
<c:choose> <!-- else if / else if / else문 -->
  <c:when test="${param.code ne null}"> <!-- eq / param : 파라미터가 제공하는 기본 객체-->
    <p>code 파라미터: ${param.code}</p> <!-- 파라미터의 키 값이 code인 것. -->
  </c:when>
  <c:otherwise>
    <p>code 파라미터가 없습니다.<br>쿼리스트링으로 code파라미터를 전송해주세요.</p>
  </c:otherwise>
</c:choose>
</body>
</html>
