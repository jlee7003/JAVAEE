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

  //  레코드의 기본키인 id값을 가져오기
  String id=request.getParameter("id");
  // 조회수 추가
  String sql="update gongji set rnum=rnum+1 where id="+id;
  stmt.executeUpdate(sql);
  response.sendRedirect("gong_content.jsp?id="+id);
%>






  