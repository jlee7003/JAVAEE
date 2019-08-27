<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<%@page import="java.util.Date" %> 
<%@page import="java.text.SimpleDateFormat"%> 
<%@page import="java.time.LocalDate" %>
<% // content.jsp
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  //값읽어오기
  request.setCharacterEncoding("utf-8");
  String name=request.getParameter("name");
  String phone=request.getParameter("phone");
  String bang=request.getParameter("bang");
  int y=Integer.parseInt(request.getParameter("y"));
  int m=Integer.parseInt(request.getParameter("m"));
  int d=Integer.parseInt(request.getParameter("d"));  
  int suk=Integer.parseInt(request.getParameter("suk"));
  
  Date today=new Date();
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
  String writeday= sdf.format(today); // 작성일
  //퇴실일계산 
  LocalDate in_date=LocalDate.of(y,m,d); // 2019 7 10
  
  LocalDate out_date=in_date.plusDays(suk); // in_date부터 suk한 일뒤
 
  //쿼리 작성
  String sql="insert into reserve(name,phone,bang,in_date,out_date,writeday)";
  sql=sql+" values('"+name+"','"+phone+"','"+bang+"','"+in_date;
  sql=sql+"','"+out_date+"','"+writeday+"')";
  //쿼리 실행
  stmt.executeUpdate(sql);
  
  stmt.close();
  conn.close();
  response.sendRedirect("reserve2.jsp");
%>










