<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>새글등록</title>
<style>
.listtable{margin:0 auto; border:1px solid black; border-collapse:collapse;}
tr,td,th{border:1px solid black;}
p{text-align:center;}
a{text-align:center;}
h1{text-align:center;}
table{width:100%;}
#btn{text-align:center;}
.ipst{width:100%;}
</style>
</head>
<body>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>글 등록</h1><br>     
	<p><a href="logout_proc.jsp">Log-out</a></p>
  </div>
</div>
<div class="container">
  

<a href="logout_proc.jsp"></a>
<form action="insertBoard_proc.jsp" method="post">
<table class="listtable">
	<tr>
		<td>제목</td>
		<td><input class="ipst" name="title" type="text"></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><input class="ipst" name="writer" type="text"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea class="ipst" name="content" rows="10"></textarea></td>
	</tr>
</table><br>		
	<div id="btn"><input type="submit" value="새글 등록" class="btn btn-info"></div>
</form>
</div>

</body>
</html>