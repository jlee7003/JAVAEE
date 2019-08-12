<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %> 
<%
  // add.jsp 조회수를 증가시키고 content.jsp로 이동만 하면 된다.
  // DB연결
   String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc); 
   Statement stmt=conn.createStatement();
   
  // id값을 가져오기 , page값 가져오기
   String id=request.getParameter("id");
   String Page=request.getParameter("page"); // 전달용
  // 현재문서의 변수            // add.jsp?id=4
  // 조회수 증가
  // 사용자가 게시판에서 특정글을 읽었다는 것을 판단할수 있는 기준은
  // content.jsp를 봤다면 본걸로 인정을 한다..
  // content.jsp를 읽을때 조회수 필드의 값을 1씩 증가를 시킨다..
   String sql="update board set rnum=rnum+1 where id="+id;
   stmt.executeUpdate(sql);
  
  // content.jsp로 이동
   response.sendRedirect("content.jsp?id="+id+"&page="+Page);
                        // content.jsp?id=4&page=22
%>










 