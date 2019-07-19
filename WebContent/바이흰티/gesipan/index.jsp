<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);// db와의 접속이 만들어짐
	Statement stmt = conn.createStatement();

	String sql = "select * from board2";
	ResultSet rs = stmt.executeQuery(sql);
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>제목</td>
		<td>작성자</td>
		<td>내용</td>
		<td>phone</td>
		<td>주량</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	<%
		while (rs.next()) {
	%>
	<tr>
		<td><a href="rnumadd.jsp?id=<%=rs.getInt("id")%>"><%= rs.getString("title")%></td>
		<td><%= rs.getString("name")%></td>
		<td><%= rs.getString("content")%></td>
		<td><%= rs.getString("phone1")%> <%= rs.getString("phone2")%> <%= rs.getString("phone3")%></td>
		<td><%= rs.getString("ju")%></td>
		<td><%= rs.getString("writeday")%></td>
		<td><%= rs.getString("rnum")%></td>
	</tr>
	<%
		}
	%>
	
	</table>
	<a href=input.jsp>글쓰기</a>
</body>
</html>
<%
stmt.close();
rs.close();
 %>