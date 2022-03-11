<%@ page pageEncoding="utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value, "utf-8");
//  	response.sendRedirect("08_07_index.jsp?name=" + value);
 	response.sendRedirect("08_07_index.jsp?name=" + encodedValue); // Redirecting 방식 : 쿼리스트링형식으로 적어줘야 값이 보내진다.
%>