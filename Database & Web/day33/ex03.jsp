<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	java.util.Enumeration<String> heads=request.getHeaderNames();
	while(heads.hasMoreElement()){
		String name=heads.nextElement();
		String[] calues=request.getParameterValues(name);
		System.out.println(name+":"+java.util.Arrays.toString(values));
	}
	String method=request.getMethod();
	String ename=request.getParameter("ename");
	String empno=request.getParameter("empno");
	System.out.println("ename:"+ename);
	System.out.println("empno:"+ename);
	System.out.println(getMethod);
	//java.util.Enumeration<String> enu=request.getParameterNames();
	//while(enu.hasMoreElements()){
	//	String msg=enu.nextElement();
	//	System.out.println(msg+":"+request.getParameter(msg));
	//}
	//String[] chk=request.getParameterValues("chk");
	//System.out.println(java.util.Arrays.toString(chk));
	//java.util.Map<String,String[]> map=request.getParameterMap();
	//String[] chk=map.get("ename");
	//System.out.println(java.util.Arrays.toString(chk));
	
	%>
</body>
</html>
















