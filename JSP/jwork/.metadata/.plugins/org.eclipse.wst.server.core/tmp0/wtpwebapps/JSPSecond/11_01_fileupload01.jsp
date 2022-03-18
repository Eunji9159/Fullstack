<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<h2>MultipartRequest를 이용한 파일 업로드</h2>
<dl>
<dd>- cos.jar파일 필요: <a href="http://www.servlets.com/cos/">다운 받기</a></dd>
</dl>
	<!--파일 전송할 떄는 반드시 method="post"방식, 파일 업로드할 때 필수 속성 "multipart/form-data" 넣어줘야함. -->
	<form name="fileForm" method="post" enctype="multipart/form-data" action="11_01_fileupload01_process.jsp">
		<fieldset>
		<legend>파일 업로드 폼</legend>
		<p>	이 름  : <input type="text" name="name"></p>
		<p>	제 목 : <input type="text" name="subject"></p>
		<p>	파 일 : <input type="file" name="filename" multiple="multiple"></p> <!-- 파일 선택할 때 여러개 선택해서 올릴 수 있는 multiple -->
		<p>	<input type="submit" value="파일 올리기"> </p>
		</fieldset>
	</form>
</body>
</html>