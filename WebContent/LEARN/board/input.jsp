<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<!--     스크립트 영역 -->
<%
String aa="jdbc:mysql://localhost:3307/ee5?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String title=request.getParameter("title");
String content=request.getParameter("content");
String email=request.getParameter("email");
String sql="insert into guest(name,title,content,email) values('"+name+"','"+title+"','"+content+"','"+email+"')";
stmt.executeUpdate(sql);
response.sendRedirect("index.jsp");

%>
