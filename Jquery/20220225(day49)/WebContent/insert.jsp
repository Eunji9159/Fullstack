<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int deptno=Integer.parseInt(request.getParameter("deptno"));
String dname=request.getParameter("dname");
String loc=request.getParameter("loc");
System.out.println(deptno+dname+loc);
String sql="insert into dept values(?,?,?)";
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="scott";
String password="tiger";

Connection conn=null;
PreparedStatement pstmt=null;

Class.forName(driver);
try{
   conn=DriverManager.getConnection(url,user,password);
   pstmt=conn.prepareStatement(sql);
   pstmt.setInt(1,deptno);
   pstmt.setString(2,dname);
   pstmt.setString(3,loc);
   pstmt.executeUpdate();
}finally{
   if(conn!=null)conn.close();
}

%>
</body>
</html>