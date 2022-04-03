<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<%@ page import="java.util.List" %>
<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>

<%
	// 세션에 저장된 글 목록을 꺼낸다.
	List<BoardVO> boardList = (List) session.getAttribute("boardList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>글 목록</title>
<style type="text/css">
.listtable{margin:0 auto; width:1200px; border:1px solid black; border-collapse:collapse;}
tr,td,th{border:1px solid black;}
/* .container1{color:black;} */
p{text-align:center;}

</style>

</head>
<body>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1><spring:message code="message.board.list.mainTitle"/></h1><br>     
    <h5>%{userName }<spring:message code="message.board.list.welcomeMsg"/><a href="logout.do">Log-out</a></h5> 
  </div>
</div>

<div class="container bg-dark">
<form action="getBoardList.do" method="post">
	<select name="searchCondition">
	<c:forEach items="${conditionMap}" var="option">
		<option value="${option.value}">${option.key}</option>
	</c:forEach>
<!-- 		<option value="TITLE">제목</option> -->
<!-- 		<option value="CONTENT">내용</option> -->
	</select>
	<input name="searchKeyword" type="text">
	<input type="submit" value="<spring:message code="message.board.list.search.condition.btn"/>">
</form>
</div>
<br>
<!-- 검색 종료 -->

<table class="listtable">
<tr>
<th><spring:message code="message.board.list.table.head.seq"/></th>
<th><spring:message code="message.board.list.table.head.title"/></th>
<th><spring:message code="message.board.list.table.head.writer"/></th>
<th><spring:message code="message.board.list.table.head.regDate"/></th>
<th><spring:message code="message.board.list.table.head.cnt"/></th>
</tr>


<c:forEach items="${boardList }" var="board">
<tr>
	<td>${board.seq}</td>
	<td align="left"><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
	<td>${board.writer }</td>
	<td>${board.regDate }</td>
	<td>${board.cnt }</td>
</tr>
</c:forEach>
</table><br>
<p><a href="insertBoard.jsp"><spring:message code="message.board.list.link.insertBoard"/></a></p>
</body>
</html>