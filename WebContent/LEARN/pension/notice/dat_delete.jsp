<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%
 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  // 폼에 입력값 가져오기
  request.setCharacterEncoding("utf-8");
  
  String id=request.getParameter("id");
  String sql="delete from gong_dat where id="+id;
  stmt.executeUpdate(sql);
  out.println("ok");
  %>
