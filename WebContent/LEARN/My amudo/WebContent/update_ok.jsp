
 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
  String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  request.setCharacterEncoding("utf-8");
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  String title=request.getParameter("title");
  String content=request.getParameter("content");
  String age=request.getParameter("age");
  String pwd=request.getParameter("pwd");
  String sung=request.getParameter("sung");
  String Page=request.getParameter("Page");
  String sql="select pwd from board where id="+id;
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();
  
  if(pwd.equals(rs.getString("pwd")))
  {
   sql="update board set name='"+name+"', title='"+title+"', content='"+content+"', age="+age+", sung="+sung+" where id="+id;
  stmt.executeUpdate(sql);
   response.sendRedirect("content.jsp?id="+id+"&Page="+Page);
  }
  else
  {
%>
   <script>
     alert("비밀번호가 틀립니다");
     history.back();
   </script>
<%    	
  }
  stmt.close();
  conn.close();
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>