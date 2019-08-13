
 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
  String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  String id=request.getParameter("id");
  String pwd=request.getParameter("pwd");
  String sql="select * from dat where id="+id;
  out.print(sql);
//   ResultSet rs=stmt.executeQuery(sql);
//   rs.next();
//  // out.print(sql);
// if(pwd.equals(rs.getString("pwd")))//
// {	
// 	sql="delete from dat where id="+id;
// 	  stmt.executeUpdate(sql);
// 	    response.sendRedirect("index.jsp");

// }
// else
// {
// 	  out.print("비번 틀림");
// }
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