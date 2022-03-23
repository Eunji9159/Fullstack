<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.List" %>
<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>

<%
	// 1. 사용자 입력 정보 추출(검색 기능은 나중에 구현)
	// 2. DB 연동 처리
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
	
	// 3. 응답 화면 구성
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
    <h1>글 목록</h1><br>     
    <h5>테스트님 환영합니다...<a href="logout_proc.jsp">Log-out</a></h5> 
  </div>
</div>

<div class="container bg-dark">
<form action="getBoardList.jsp" method="post">
	<select name="searchCondition">
		<option value="TITLE">제목</option>
		<option value="CONTENT">내용</option>
	</select>
	<input name="searchKeyword" type="text">
	<input type="submit" value="검색">
</form>
</div>
<br>
<!-- 검색 종료 -->

<table class="listtable">
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>등록일</th>
<th>조회수</th>
</tr>


<% for(BoardVO board : boardList) { %>
<tr>
	<td><%= board.getSeq() %></td>
	<td align="left"><a href="getBoard.jsp?seq=<%=board.getSeq() %>"><%= board.getTitle() %></a></td>
	<td><%= board.getWriter() %></td>
	<td><%= board.getRegDate() %></td>
	<td><%= board.getCnt() %></td>
</tr>
<% } %>
</table><br>
<p><a href="insertBoard.jsp">새글 등록</a></p>
</body>
</html>