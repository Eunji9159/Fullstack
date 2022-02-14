<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력 결과</h1>
	<%
	String msg=request.getParameter("msg");
	String sql="insert into guest01 values ('"+msg+"',sysdate)";
	String url="jdbc:oracle:thin:scott/tiger@localhost:1521:xe";
	oracle.jdbc.driver.OracleDriver driver;
	driver=new oracle.jdbc.driver.OracleDriver();
	
	java.sql.Connection conn=null;
	java.sql.Statement stmt=null;
	try{
		java.sql.DriverManager.registerDriver(driver);
		conn=java.sql.DriverManager.getConnection(url);
		stmt=conn.createStatement();
		int result=stmt.executeUpdate(sql);
		if(result>0) out.print("<p>입력성공</p>");
		else out.println("<p>입력실패</p>");
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
	<a href="quest.jsp">방명록으로 돌아가기</a>
</body>
</html>















