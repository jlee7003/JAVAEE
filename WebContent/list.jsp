<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement();
ResultSet rs; // ���̺����� �о�ͼ� ������ ����
String sql="select * from guest";
rs=stmt.executeQuery(sql);//select ����� ������ ������� rs�� ���� ,�׸����� �ҷ�����
//sql�� �����̸�
rs.next(); // ���ڵ� �����͸� �Ʒ��� ��ĭ �����ִ� ��ɾ� ù��° ���ڵ�
out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");
rs.next(); // ���ڵ� �����͸� �Ʒ��� ��ĭ �����ִ� ��ɾ� �ι�° ���ڵ�
out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");
rs.next(); // ���ڵ� �����͸� �Ʒ��� ��ĭ �����ִ� ��ɾ� �ι�° ���ڵ�
out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");
rs.next(); // ���ڵ� �����͸� �Ʒ��� ��ĭ �����ִ� ��ɾ� �ι�° ���ڵ�
out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");
%>