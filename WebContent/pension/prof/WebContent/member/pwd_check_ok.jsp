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
  
  // 폼에 입력된 값 가져오기
  String pwd=request.getParameter("pwd"); 
  // 아이디와 비밀번호를 가지고 member 테이블검색 쿼리 생성
  String sql="select * from member where userid='"+session.getAttribute("userid")+"' and pwd='"+pwd+"'";
  // 쿼리를 실행해서 결과를 ResultSet으로 가져온다..
  ResultSet rs=stmt.executeQuery(sql);
  // 레코드가 있든지 없든지....
  if(rs.next())  // 레코드가 있으면 true, 없으면 false
	 response.sendRedirect("update.jsp");
  else
     response.sendRedirect("pwd_check.jsp");
  
  rs.close();
  stmt.close();
  conn.close();
%>  












