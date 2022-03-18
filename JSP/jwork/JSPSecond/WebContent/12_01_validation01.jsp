<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<meta charset="utf-8">
<!-- 파비콘(해당 사이트를 나타내는 아이콘) 에러 시 --> <!-- 바탕화면에 끌어다 쓰면 바로가기 아이콘 뜸 -->
<!-- <link rel="shortcut icon" href="data:image/x-icon" type="image/x-icon"> -->
<style>
form {width:60%; margin:0 auto; padding:10px; text-align:center;}
</style>
</head>
<body>
	<form name="loginForm" action="12_01_validation_process.jsp" method="post">
	<fieldset>
		<legend>로그인</legend>
		<label for="uid">아&nbsp;이&nbsp;디&nbsp;&nbsp;: </label> <!--html은 한칸 띄어쓰기밖에 인식 못하기 때문에 여러개 띄어쓰기 해주려면 &nbsp로 해줘야함.  -->
		<input type="text" name="id" id="uid" required><br>
		<label for="upw">비밀번호&nbsp;: </label>
		<input type="password" name="passwd" id="upw" required><br><br>
		<!-- <input type="submit" value="전송"> -->
 		<input type="button" value="전송" onclick="checkLogin()"> <!-- action을 실행해주려면 submit기능이 있어야 하는데 buttond은 그 기능을 하지 못함. 그래서 보니 onclick이벤트 존재! -->
	</fieldset>
	</form>

<script>
	 function checkLogin() {
		var form = document.loginForm;  //.loginForm: 여기서 '.'은 name에 접근한다는 것. 즉, form이름에 접근한다는 뜻. 
		if (form.id.value == "") { //value:입력한 값이 있는지. 즉 18번줄에 required.
			alert("아이디를 입력해 주세요.");
			form.id.focus(); // 커서를 위에 name=id에 옮겨라.
			return false; // return false는 function을 나감.
		} else if (form.passwd.value == "") {
			alert("비밀번호를 입력해 주세요");
			form.passwd.focus();
			return false;
		}			
		console.log("값 가져오기: ");
		console.log("아이디 : " + document.loginForm.id.value + "\n" +  "비밀번호 : " + document.loginForm.passwd.value);
		form.submit(); //document.loginForm,즉 14~24번 줄.
	} 
</script>
</body>
</html>