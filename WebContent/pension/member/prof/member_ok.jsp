<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  // 입력양식의 값을 가져오기
  request.setCharacterEncoding("utf-8");
  
  String userid=request.getParameter("userid");
  String name=request.getParameter("name");
  String pwd=request.getParameter("pwd1");
  String email=request.getParameter("email");
  // 입력쿼리 만들기
  String sql="insert into member(userid,name,pwd,email) ";
  sql=sql+" values('"+userid+"','"+name+"','"+pwd+"','"+email+"')";
  // 쿼리 실행
  stmt.executeUpdate(sql);
%>  











