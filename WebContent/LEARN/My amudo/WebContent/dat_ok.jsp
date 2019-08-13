<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>      
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%> <!-- YYYY-MM-DD 형식을 위해 -->
<%

   String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
   Statement stmt=conn.createStatement();
   request.setCharacterEncoding("utf-8");
   
   Date today=new Date(); 
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
   String writeday= sdf.format(today);
   
   String name=request.getParameter("name");
   String content=request.getParameter("content");
   String pwd=request.getParameter("pwd");
   String b_id=request.getParameter("b_id");
   String Page=request.getParameter("Page");
   
   String sql="insert into dat(name,content,pwd,writeday,b_id) values('"+name+"','"+content+"','"+pwd+"','"+writeday+"',"+b_id+")";
 
   stmt.executeUpdate(sql);
   
   response.sendRedirect("content.jsp?id="+b_id+"&Page="+Page);
   
	stmt.close();
	conn.close();
   
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>