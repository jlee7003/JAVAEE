<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/anthony?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn=DriverManager.getConnection(aa,bb,cc);//������ ���������
Statement stmt=conn.createStatement();
//��ɾ ������ �޼ҵ� ��ɾ �����ų�� �ְ� ��
//String sql="create table member(name char(10),age int)";
String sql="insert into member(name,age) values('leh',24)";
stmt.executeUpdate(sql);

//executeQuery(������)->��ȭx

//executeUpdate(������)->��ȭo

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