<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

String id=request.getParameter("id");

request.setCharacterEncoding("utf-8");
String sql="update gongji set rnum=rnum+1 where id="+id; //쿼리문을 실행시키고 execute 
stmt.executeUpdate(sql); 
response.sendRedirect("notice_content.jsp?id="+id);
%>