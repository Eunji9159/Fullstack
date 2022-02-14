<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// post방식의 한글깨짐 처리 - 매 코드마다 반복적으로 수행해야함, 파라미터값 피싱전에 수행되어야 함
	request.setCharacterEncoding("utf-8"); // %dfjkajf 같은 문자들을 우리가 알아들을 수 있는 한글로 바꿔주는 역할을 하는 "utf-8"
	String sub=request.getParameter("sub");
	String id=request.getParameter("id");
	String content=request.getParameter("content");
	String method=request.getMethod();
	String path="add.jsp";	
	if(sub.isEmpty()) sub="제목없음";
	else{
		// google -> 인젝션공격 패턴
		sub=sub.replace('-', '－');
		sub=sub.replace(',', '‚');
		
	}
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String sql="insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'"+sub+"','"+id+"','"+content+"')";
	
	Connection conn=null;
	Statement stmt=null;
	if(!(id.isEmpty())&&method.equals("POST")){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url,"scott","tiger");
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			path="list.jsp";
		}catch(SQLException e){
			
		}finally{
			if(stmt!=null)stmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	response.sendRedirect(path); // list페이지로 다시 돌아간다.
%>
</body>
</html>