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
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");

String sql="delete from board2 where id="+id;
stmt.executeUpdate(sql);
response.sendRedirect("index.jsp");
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