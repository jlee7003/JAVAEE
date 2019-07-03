<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String name=request.getParameter("name");
String title=request.getParameter("title");
String content=request.getParameter("content");
String sex=request.getParameter("sex");
String food=request.getParameter("food");
String email=request.getParameter("email");
String juso=request.getParameter("juso");
String sql="update test_board set title='"+title+"',sex="+sex+",content='"+content+"',juso='"+juso+"',food='"+food+"',email='"+email+"' where id="+id; 
stmt.executeUpdate(sql);

response.sendRedirect("index.jsp");
%>