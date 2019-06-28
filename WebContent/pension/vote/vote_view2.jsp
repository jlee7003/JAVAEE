<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<!--     스크립트 영역 -->
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
ResultSet rs;//화면에 데이터베이스 표현 할 것이면 사용
String sql="select * from vote";
rs=stmt.executeQuery(sql);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>안주투표</td>
</tr>
<tr>
<td>생선회</td>
<td>곱창</td>
<td>두부김치</td>
<td>양꼬치</td>
<td>초밥</td>
<td>감자탕</td>
<td>족발</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("a1") %></td>
<td><%=rs.getString("a2") %></td>
<td><%=rs.getString("a3") %></td>
<td><%=rs.getString("a4") %></td>
<td><%=rs.getString("a5") %></td>
<td><%=rs.getString("a6") %></td>
<td><%=rs.getString("a7") %></td>
</tr>
<%
} 
%>
</table>
</body>
</html>
<%
stmt.close();
rs.close();
 %>