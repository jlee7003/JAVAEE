<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<%@page import="java.io.File" %> 
<% // content.jsp
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  String id=request.getParameter("id");
  String sql="select fname from tour where id="+id;
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();
 
  File f=new File("C:/Users/channy/git/repository2/pension/WebContent/tour/img/"+rs.getString("fname"));
 
  if(f.exists())
	 f.delete();   
  sql="delete from tour where id="+id;
  stmt.executeUpdate(sql);
  
  stmt.close();
  conn.close();
  
 response.sendRedirect("tour_list.jsp");
%>  
 