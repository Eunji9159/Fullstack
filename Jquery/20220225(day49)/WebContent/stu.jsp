<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"
%>{"students":[
   <%
   int num=Integer.parseInt(request.getParameter("num"));
   String name="user1";//request.getParameter("name");
   int kor=90;
   int eng=91;
   int math=92;
   %>
   {"num":<%=num %>,"name":"<%=name %>","kor":<%=kor %>,"eng":<%=eng %>,"math":<%=math %>}   
]}

<%
 System.out.println("call json page");
%>