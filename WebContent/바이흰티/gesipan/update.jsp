<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	%>
<%@page import="java.sql.*" %>    
<%
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  String id=request.getParameter("id");
  String sql="select * from board where id="+id;
  ResultSet rs=stmt.executeQuery(sql);
%>  
 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method=post action="update_ok.jsp">
	<table>
		<tr>
			<td>제목</td>
			<td><input type=text name=title value="<%=rs.getString("title")%>"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type=text name=name value="<%=rs.getString("name")%>"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea cols=40 rows=10 name=content>
			<%=rs.getString("content")%>
			</textarea></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><select id=010 style="width: 55px;" name=phone1>
					<option>010</option>
					<option>011</option>
					<option>016</option>
					<option>017</option>
					<option>018</option>
					<option>019</option>
			</select> -<input type=text name=phone2 value="<%=rs.getString("phone2")%>">  - <input type=text name=phone3 value="<%=rs.getString("phone3")%>"></td>
		</tr>
		<tr>
			<td>주량</td>
			<td><input type=radio value=1 name=ju>소주 3병
			<input type=radio value=2 name=ju> 소주 2병
			<input type=radio value=3 name=ju> 소주 1병
			<input type=radio value=4 name=ju> 소주 반병
			<input type=radio value=5 name=ju> X</td>
		</tr>
		<tr>
		<td><a href=index.jsp><input type=submit value=저장하기></a></td>
		</tr>
			</table>
		</form>
</body>
</html>