<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>로그인</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
	<h1>로그인</h1>
  </div>
  </div>
	<div class="container">
	   
    <form action="login.do" method="post">
    <div class="loginform">
    <p>아&nbsp;이&nbsp;디&nbsp;<input type="text" name="id" value="${userVO.id }" }></p>
    <p>비밀번호&nbsp;<input type="text" name="password" value="${userVO.password}" }></p>
	<p class="lgbtn"><input type="submit" class="btn btn-info" value="로그인"></p>
  	</div>
  	</div>
    
    </form>
</body>
</html>
    