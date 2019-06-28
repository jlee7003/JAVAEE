<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
String writeday = sdf.format(today);

String sql="insert into event(name,phone,writeday) values('"+name+"','"+phone+"','"+writeday+"')";

stmt.executeUpdate(sql);

response.sendRedirect("index.jsp");
%>