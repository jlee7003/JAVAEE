<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

String id=request.getParameter("id");

String sql="select * from guest where id="+id;

ResultSet rs;
rs=stmt.executeQuery(sql);
//rs객체에 저장하고 나서 rs.next 해주는 것을 까먹지 말것!

rs.next();


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
</style>
<body>
<form method=post action="update_ok.jsp">
<table>
<tr>
<td>이름</td>
<td> <%=rs.getString("name")%></td>
</tr>
<tr>
<td>제목</td>
<td><input type=text name=title size=40 value="<%=rs.getString("title")%>"></td>
</tr>
<tr>
<td>내용</td>
<td><textarea cols=40 rows=5 name=content> <%=rs.getString("content")%> </textarea></td>
</tr>
<tr>
<td><input type=submit value=전송></td>
<td></td>
</tr>
</table>
</form>

</body>
</html>