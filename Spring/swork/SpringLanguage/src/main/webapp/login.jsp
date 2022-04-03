<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
  <title>message.user.login.title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><spring:message code="message.user.login.title"></spring:message></title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
  .loginform{margin:0 auto; padding: 35px; width:35%; border:1px solid black;}
  h1{text-align:center;}
  .lgbtn{text-align:center;}   
  p{text-align:center;}
  div{border-radius:20px;}
  </style>
  
</head>
<body>
<div class="container-fluid">
  <br>
  <h3>Sticky Navbar</h3><br>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="#">Logo</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">로그인</a>
    </li>
  </ul>
</nav>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
	<h1><spring:message code="message.user.login.title"/></h1>
	<a href="login.do?lang=en"><spring:message code="message.user.login.language.en"/></a>&nbsp;&nbsp;
	<a href="login.do?lang=ko"><spring:message code="message.user.login.language.ko"/></a>
  </div>
  </div>
	<div class="container">
	   
    <form action="login.do" method="post">
    <div class="loginform">
    <p><spring:message code="message.user.login.id"/>: <input type="text" name="id" value="${userVO.id }" ></p>
    <p><spring:message code="message.user.login.password"/>: <input type="text" name="password" value="${userVO.password}" ></p>
	<p class="lgbtn"><input type="submit" class="btn btn-info" value="<spring:message code="message.user.login.loginBtn"/>"></p>
  	</div>
    
    </form>
  	</div>
</body>
</html>
    