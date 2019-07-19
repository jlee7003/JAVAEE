
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
  
  // 수정할 레코드의 입력값 읽어오기
  request.setCharacterEncoding("utf-8");
  String id=request.getParameter("id");
  String title=request.getParameter("title");
  String content=request.getParameter("content");
  String name=request.getParameter("name"); // 폼에 입력한 비밀번호
  String phone1=request.getParameter("phone1"); 
  String phone2=request.getParameter("phone2"); 
  String phone3=request.getParameter("phone3"); 
  String ju=request.getParameter("ju"); 
  // checkbox는 값이 1개 이상
 
  String sql="select * from board2 where id="+id;
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();

%>
   
<%
  stmt.close();
  conn.close();
%>  