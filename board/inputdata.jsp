<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@page import="java.sql.*" %>
<%
//DB ����� ������ ����� �� �ִ� ȯ��
//Connection , Statement
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";


String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
// ����ڰ� �Է��� �� ��������
//request.getParameter("name");

Statement stmt=conn.createStatement();//������ �����Ű�� ���� �߰�

String a=request.getParameter("name"); 
String b=request.getParameter("title");//html�� name�� title�� ���� value�� ������ ���ڴ�.
String c=request.getParameter("content"); 
    
//�Է��� ������ �ۼ�
String sql="insert into board(name,title,content) "; //id�� Ư���� ������ ������
sql=sql+"values('"+a+"','"+b+"','"+c+"')";
    
stmt.executeUpdate(sql);    
/*out.println(sql); sql ��ɾ� ��� - ���� �߻��� �Է� �غ��°� ����*/
stmt.close();
conn.close();
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