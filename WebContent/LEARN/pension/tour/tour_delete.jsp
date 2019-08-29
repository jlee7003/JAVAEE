<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<%@page import="java.io.File" %>  
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  // 삭제하고자 하는 레코드의 id값을 가져오기
  String id=request.getParameter("id"); // get으로 보낸값
  
  // 삭제쿼리 작성
  String sql="select fname from tour where id="+id;
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();
  
  File f=new File("C:/Users/alfo1-3/eclipse-workspace3/TIL/WebContent/LEARN/pension/tour/tour_jpg/"+rs.getString("fname"));
  
  sql="delete from tour where id="+id;
  
  // 삭제 실행
  stmt.executeUpdate(sql);
  

  
  // close()
  stmt.close();
  conn.close();
  
  // gong_list.jsp로 이동
  response.sendRedirect("tourlist.jsp");
%>  