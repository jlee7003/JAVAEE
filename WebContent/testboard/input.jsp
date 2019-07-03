<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String writeday = sdf.format(today);
String sql="insert into test_board(name, title, content, email, sex, food, juso, writeday)"; 
sql=sql+"values('"+name+"','"+title+"','"+content+"','"+email+"',"+sex+",'"+food+"','"+juso+"','"+writeday+"')";


stmt.executeUpdate(sql);
response.sendRedirect("index.jsp"); // list.jsp로 이동
%>
