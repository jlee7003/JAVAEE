<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement(); 
 request.setCharacterEncoding("utf-8");
 String title=request.getParameter("title");
 String name=request.getParameter("name");
 String content=request.getParameter("content");
 String ju=request.getParameter("ju");
 String phone1=request.getParameter("phone1");
 String phone2=request.getParameter("phone2");
 String phone3=request.getParameter("phone3");
 Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
 String sql="insert into board2(title,name,content,phone1,phone2,phone3,writeday,ju)";
 sql=sql+" values('"+title+"','"+name+"','"+content+"','"+phone1+"','"+phone2+"','"+phone3+"','"+writeday+"','"+ju+"')";
 stmt.executeUpdate(sql);
  response.sendRedirect("index.jsp");
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