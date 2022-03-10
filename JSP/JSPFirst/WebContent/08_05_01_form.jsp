<%@ page contentType = "text/html; charset=utf-8"%>
<!DOCTYPE>
<html>
<head><title>폼 생성</title><meta charset="utf-8"></head>
<body>

<!--  	<form action="08_05_01_formParameter.jsp"> -->
  	<form action="08_05_requestInfo.jsp?id=admin" method="post"> <!-- 'id="admin"' : get방식. url뒤에 쿼리 문자열로 전송됨. -->
이름: <input type="text" name="name" size="30"> <br>
주소: <input type="text" name="address" size="30"> <br> <!-- name속성 有 - 파라미터 전송 가능! -->
좋아하는 동물:
	<input type="checkbox" name="pet" value="dog">강아지
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지
<br>
<input type="submit" value="전송"> <!-- form태그에 있는 action을 실행한다는 것. -->
</form>
</body>
</html>

