<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%@page import="java.sql.*" %> 
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //DB 연결

request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String b=request.getParameter("title");
String c=request.getParameter("content");

String sql="update board set title='"+b+"',content='"+c+"' where id="+id;


stmt.executeUpdate(sql);//쿼리문 실행(database 에서 실행이 됨) 변화가 있으므로 업데이트 ->저장
//list.jsp로 이동하기
response.sendRedirect("content.jsp?id="+id);


stmt.close();
conn.close();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>