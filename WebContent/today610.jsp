<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/anthony?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn=DriverManager.getConnection(aa,bb,cc);//접속이 만들어지고
Statement stmt=conn.createStatement();
//명령어를 내리는 메소드 명령어를 실행시킬수 있게 됨
//String sql="create table member(name char(10),age int)";
String sql="insert into member(name,age) values('leh',24)";
stmt.executeUpdate(sql);

//executeQuery(쿼리문)->변화x

//executeUpdate(쿼리문)->변화o

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>