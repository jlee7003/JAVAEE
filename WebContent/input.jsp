<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %> 
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt = conn.createStatement(); // ���� �������� 

// ���Է¾�Ŀ��� �Էµ� ���� ��������               // ���±� �ȿ���
String a=request.getParameter("name"); //   name=name
String b=request.getParameter("title"); // name=title
String c=request.getParameter("content"); // name=content

String sql="insert into guest(name,title,content) ";
sql=sql+"values('"+a+"','"+b+"','"+c+"')"; // ������
//out.println(sql);
stmt.executeUpdate(sql); // ������ ���� => ����
// list.jsp�� �̵��ϱ�
response.sendRedirect("list.jsp"); // list.jsp�� �̵�
%>













