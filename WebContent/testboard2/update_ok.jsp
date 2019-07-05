<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String title=request.getParameter("title");
String name=request.getParameter("name");
String juso=request.getParameter("juso");
String sex=request.getParameter("sex");
String food=request.getParameter("food");
String pwd=request.getParameter("pwd");
String content=request.getParameter("content");
String email=request.getParameter("email");
String sql="update test_board2 set title='"+title+"', name='"+name+"',"; 
sql=sql+"juso='"+juso+"', sex='"+sex+"', food='"+food+"', pwd='"+pwd+"', content='"+content+"', email='"+email+"' where id="+id;
out.print(sql);
stmt.executeUpdate(sql);
response.sendRedirect("index.jsp");

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