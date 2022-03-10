<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
   <%
      request.setCharacterEncoding("UTF-8");

//       String id = request.getParameter("id");
//       String passwd = request.getParameter("passwd");
//       String name = request.getParameter("name");
//       String phone1 = request.getParameter("phone1");
//       String phone2 = request.getParameter("phone2");
//       String phone3 = request.getParameter("phone3");
//       String sex = request.getParameter("sex");
//       String hobby1 = request.getParameter("hobby1");
//       String hobby2 = request.getParameter("hobby2");
//       String hobby3 = request.getParameter("hobby3");
//       String comment = request.getParameter("comment");
   %>
<%--    <%@page import="com.dto.Member" %> --%>
<%--    <% Member mem = new  Member();  %> --%>
   <jsp:useBean id="mem" class="com.dto.Member" /> <!-- useBean을 이용해서 자바빈 파일과 연결 -->
   
  <% 
  String id = request.getParameter("id");
  mem.setId(id); 
  String passwd = request.getParameter("passwd");
  mem.setPasswd(passwd); 
  String name = request.getParameter("name");
  mem.setName(name); 
  String phone1 = request.getParameter("phone1");
  mem.setPhone1(phone1); 
  String phone2 = request.getParameter("phone2");
  mem.setPhone2(phone2); 
  String phone3 = request.getParameter("phone3");
  mem.setPhone3(phone3); 
  String sex = request.getParameter("sex");
  mem.setSex(sex); 
  String hobby1 = request.getParameter("hobby1");
  mem.setHobby1(hobby1); 
  String hobby2 = request.getParameter("hobby2");
  mem.setHobby2(hobby2); 
  String hobby3 = request.getParameter("hobby3");
  mem.setHobby3(hobby3); 
  String comment = request.getParameter("comment");
  mem.setComment(comment); 
  
  
  %> 
   <jsp:setProperty property="*" name="mem"/> <!-- 전송받은 데이터를 자바빈 파일에 선언(=저장=초기화) -->
   <jsp:setProperty property="id" name="mem" param="user_id"/> <!-- 전송받은 데이터를 자바빈 파일에 선언(=저장=초기화) -->
   
   
   
   
   
   
   
   <p> 아이디 : <jsp:getProperty property="id" name="mem" />
   <p>   비밀번호 : <jsp:getProperty property="passwd" name="mem" />
   <p>   이름 : <jsp:getProperty property="name" name="mem" />
   <% for(int i=1; i<=3;i++){ %>
   <p>   연락처 : <jsp:getProperty property="phone<%=i %>" name="mem" />
   <%} %>
   <p>   연락처 : <jsp:getProperty property="phone1" name="mem" />
   - <jsp:getProperty property="phone2" name="mem" />
   - <jsp:getProperty property="phone3" name="mem" />
   <p>   성별 : <jsp:getProperty property="sex" name="mem" />
   <p>   취미 : <jsp:getProperty property="hobby" name="mem" />
<%
   String[] values = request.getParameterValues("hobby");
   if (values != null) {
      for (int i = 0 ; i < values.length ; i++) {
         out.println(values[i]);
      }
   }
%>
   <p>   가입 인사 : <jsp:getProperty property="comment" name="mem" />
   
<%--    <p> 아이디 : <%=id%> --%>
<%--    <p>   비밀번호 : <%=passwd%> --%>
<%--    <p>   이름 : <%=name%> --%>
<%--    <p>   연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%> --%>
<%--    <p>   성별 : <%=sex%> --%>
<%--    <p>   취미 : <%=hobby1%> <%=hobby2%> <%=hobby3%> --%>
<%--    <p>   가입 인사 : <%=comment%> --%>
</body>
</html>