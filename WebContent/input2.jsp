<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement();
//html �±׿��� ������ ������ ���� ���
//�� �Է¾�Ŀ��� �Էµ� ���� ��������                                        //form�±� �ȿ���
String a=request.getParameter("name"); //name=name
String b=request.getParameter("title");//name=title
String c=request.getParameter("content");//name=content

String sql="insert into guest(name,title,content) "; //id�� Ư���� ������ ������
sql=sql+"values('"+a+"','"+b+"','"+c+"')"; //���ڿ��̹Ƿ� ������ �����־�� ��
//''���� ����ǥ�� sql���� ���ڶ�� ���� �˸��� ���̰� "" ū����ǥ�� jsp ������

stmt.executeUpdate(sql);//������ ����(database ���� ������ ��)
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