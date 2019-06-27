<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement();

String id=request.getParameter("id");

String sql="update gesipan set rnum=rnum+1 where id="+id;

stmt.executeUpdate(sql);

response.sendRedirect("gesipanlist.jsp?id="+id);
   stmt.close();
   conn.close();
	%>