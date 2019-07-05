<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@ include file="login.jsp"%>
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
margin-top:50px;
}
.footer{
location:right;
}
</style>
<body>
<div>
<table align=center width=800px;>
<tr>
	<td>id</td>
	<td>이름</td>
	<td>제목</td>
	<td>작성일</td>
	<td>조회수</td>
	</tr>
<% 
while(rs.next())
{
%>
	<tr>
	<td><%=rs.getString("id")%></td>
	<td><%=rs.getString("name")%></td>
	<td><a href="content.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title")%></a></td>
	<td><%=rs.getString("writeday") %></td>
	<td><%=rs.getString("rnum")%></td>
	</tr>
	
<%
}
%>
<tr>
<td colspan=5><a href="input.jsp">작성하기</a>
</td>
</tr>

</table>

</div>

</body>
</html>
<%
stmt.close();
conn.close();
%>