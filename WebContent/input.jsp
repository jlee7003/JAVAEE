<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %> 
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt = conn.createStatement(); // 쿼리 실행위한 

// 폼입력양식에서 입력된 값을 가져오기               // 폼태그 안에서
String a=request.getParameter("name"); //   name=name
String b=request.getParameter("title"); // name=title
String c=request.getParameter("content"); // name=content

String sql="insert into guest(name,title,content) ";
sql=sql+"values('"+a+"','"+b+"','"+c+"')"; // 쿼리문
//out.println(sql);
stmt.executeUpdate(sql); // 쿼리문 실행 => 저장
// list.jsp로 이동하기
response.sendRedirect("list.jsp"); // list.jsp로 이동
%>













