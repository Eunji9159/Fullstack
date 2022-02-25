<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.*"
%>{"dept":[
<%
System.out.println("call jason ...");
   String driver="oracle.jdbc.OracleDriver"; //데이터베이스 연동
   String url="jdbc:oracle:thin:@localhost:1521:xe";
   String user="scott";
   String password="tiger";
   
   List<Map<String,String>> list=new ArrayList<Map<String,String>>();
   Class.forName(driver);
   Connection conn=null;
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   try{
      conn=DriverManager.getConnection(url, user, password);
      pstmt=conn.prepareStatement("select * from dept");
      rs=pstmt.executeQuery();
      while(rs.next()){
         Map<String,String> map=new HashMap<String,String>();
         map.put("deptno", rs.getString("deptno"));
         map.put("dname",rs.getString("dname"));
         map.put("loc",rs.getString("loc"));
         list.add(map);
      }
   }finally{
      if(conn!=null)conn.close();
   }
   boolean boo=false;
   for(Map<String,String> bean:list){
      if(boo)out.print(",");
%>
{"deptno":<%=bean.get("deptno") %>,"dname":"<%=bean.get("dname") %>","loc":"<%=bean.get("loc") %>"}
<%
      boo=true;
   }
%>
]}