<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db���� ������ �������
Statement stmt=conn.createStatement(); //stmt ��� �������� ������ ���� ��ΰ� ����ִ�.

String id=request.getParameter("id");
String title=request.getParameter("title");
String content=request.getParameter("content");

String sql="update guest set title='"+title+"',content='"+content+"', where id="+id;

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