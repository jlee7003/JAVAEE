<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
String id=request.getParameter("id");

String sql="select * from test_board";
ResultSet rs=stmt.executeQuery(sql);


%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table{
border:1px solid black;
}

td{
border:1px solid black;
}
</style>
<body>
<table cellspacing=0 width=800 align=center>
			<caption style="text-align:right">
			     <a href="input.html">글쓰기</a>
			</caption>

				<tr id=first>
					<td>번호</td>
					<td>제목</td>
					<td>글쓴이</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
				<% 
				while(rs.next())
				{
					%>
				
				<tr>
				<td><%=rs.getString("id") %></td>
				<td><a href="content.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title") %></a></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("writeday") %></td>
				<td><%=rs.getString("rnum") %></td>
				</tr>
				<%
				}
				%>

			</table>
</body>
</html>