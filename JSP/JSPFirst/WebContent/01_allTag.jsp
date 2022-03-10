<%@ page contentType = "text/html; charset=utf-8" %>
<%String s = "abc"; %>
<%! // html : 형식을 안지켜도 오류가 안 일어나는 한에서 가능. xml : 조금이라도 규칙에 벗어나면 X.
	// <%@ 지시태그(directive)    <%!:정의(declare(선언부))-사용할 메서드 정의/전역변수 선언      <% :실행부(scriptlet)      <%= : 표현부(out.println()) 
	
	int c;
	public int add(int a, int b) {
		c = a + b;
		return c;
	}

	public int subtract(int a, int b) {
		c = a - b;
		return c;
	}
%>
<html>
<head><title>스크립트릿에서 선언부 사용하기</title></head>
<body>
<% // 실행부에 선언된 변수
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
	
	/* System.out.print  'ln' : 시스템(console)창 쪽에 출력되는 개행문자
								브라우저 상에 개행 넣고 싶으면 <br> 입력해주기. */
							
%>

<%= value1 %> + <%= value2 %> = <%= addResult %>
<% %>
<br>
<%= value1 %> - <%= value2 %> = <%= subtractResult %>

</body>
</html>
