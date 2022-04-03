<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 에러 화면</title>
</head>
<body>
<!-- 타이틀 시작 -->
<hr>
<h1>기본 에러 화면입니다.</h1>

<hr>

<!-- 에러메시지 -->
<div><p>Message : ${exception.message }</p></div>
<hr>
</body>
</html>