<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.FormatUtil, com.dao.Calculator" %>
<%
	request.setAttribute("price", 12345);
%>
<html>
<head><title>EL 함수 호출</title></head>
<body>

가격은 <b>${FormatUtil.number(price, '#,##0') }</b>원 입니다.<br>
3의 3제곱승은 <b>${Calculator.process(3) }</b> 입니다. <!-- static일 때 클래스명.메서드명 / 표현식도 똑같이 생성할 수 있다. -->

</body>
</html>
