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

String sql="select * from test_board2";
ResultSet rs=stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
td{
border: 1px solid black;
}
table{
border: 1px solid black;
}
</style>
<body>
<table>

<% 
while(rs.next())
{
%>
	<tr>
	<td></td>
	<td></td>
	</tr>
	
<%
}
%>
</table>
</body>
</html>