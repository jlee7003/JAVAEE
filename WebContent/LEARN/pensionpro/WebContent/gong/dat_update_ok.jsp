<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %> 
<%@page import="java.text.SimpleDateFormat"%>    
<%
 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  
  // 폼에 입력값 가져오기
  request.setCharacterEncoding("utf-8");
  String g_id=request.getParameter("g_id"); // gong_dat의 id
  String name=request.getParameter("name");
  String content=request.getParameter("content");
  
  
  String sql="update gong_dat set name=? , content=? where id=?";
  PreparedStatement pstmt=conn.prepareStatement(sql);
  pstmt.setString(1, name);
  pstmt.setString(2, content);
  pstmt.setString(3, g_id);
  pstmt.executeUpdate();
  
  
  
//gongji 테이블의 아이디를 구하기 위해서 
	sql="select g_id from gong_dat where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,g_id);
	ResultSet rs=pstmt.executeQuery();
	rs.next();

  
  // gong_content.jsp로 이동
  response.sendRedirect("gong_content.jsp?id="+rs.getString("g_id"));

  pstmt.close();
  conn.close();
%>  















