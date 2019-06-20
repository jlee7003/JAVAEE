<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

 //입력 양식의 값 가져오기
 request.setCharacterEncoding("utf-8");
 String userid=request.getParameter("userid");
 String name=request.getParameter("name");
 String pwd=request.getParameter("pwd1");
 String email=request.getParameter("email");
 //입력 쿼리 만들기
 String sql="insert into member(userid,name,pwd,email)";
 sql=sql+" values('"+userid+"','"+name+"','"+pwd+"','"+email+"')";
 out.println(sql);
 stmt.executeUpdate(sql);
 //쿼리 실행
%>