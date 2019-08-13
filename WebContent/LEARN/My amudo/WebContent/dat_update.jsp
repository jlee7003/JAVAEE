
 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  request.setCharacterEncoding("utf-8");
  String id=request.getParameter("id");
  String b_id=request.getParameter("id");
  String Page=request.getParameter("Page");
  String name=request.getParameter("name1");
  String content=request.getParameter("content1");
  String pwd=request.getParameter("pwd");//form으로 받은 pwd값
  String sql="select * from dat where id="+b_id;

  ResultSet rs=stmt.executeQuery(sql);
  
  rs.next();
  if(pwd.equals(rs.getString("pwd")))//비밀번호가 맞는지 검사해야하므로 select로 데이터베이스의 pwd를 불러온다
  //form으로 입력 받은 값과 데이터베이스의 pwd값과 비교함
  {	
	  sql="update dat set name='"+name+"', content='"+content+"' where id="+id;
	  out.print(sql);
// 	  stmt.executeUpdate(sql);
// 	  response.sendRedirect("content.jsp?id="+b_id+"&Page="+Page);

  }
  else
  {
	  out.print("비번 틀림");
  }
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