<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<!--     스크립트 영역 -->
<%
String aa="jdbc:mysql://localhost:3307/ee5?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");

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
<body>

</body>
</html>