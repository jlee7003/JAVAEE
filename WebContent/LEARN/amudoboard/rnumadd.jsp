<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement();

String id=request.getParameter("id");

String sql="update board set rnum=rnum+1 where id="+id;

stmt.executeUpdate(sql);

response.sendRedirect("content.jsp?id="+id);

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