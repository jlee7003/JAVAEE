<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db���� ������ �������
Statement stmt=conn.createStatement(); //stmt ��� �������� ������ ���� ��ΰ� ����ִ�.
//db����
//�ʿ��� ���� �����´�.
//title,content,id
//������ ������ �ۼ�
//������ ����

String id=request.getParameter("id");
String b=request.getParameter("titl");
String c=request.getParameter("content");

String sql="update guest set title='"+b+"',content='"+c+"' where id="+id;

stmt.executeUpdate(sql);//������ ����(database ���� ������ ��) ��ȭ�� �����Ƿ� ������Ʈ ->����
//list.jsp�� �̵��ϱ�
response.sendRedirect("listcontent.jsp?id="+id);

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