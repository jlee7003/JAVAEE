<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%@page import="java.sql.*" %><!-- 이건 뭘까??? -->
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //DB 연결

String id=request.getParameter("id");

String sql="select * from board where id="+id;

ResultSet rs=stmt.executeQuery(sql);

rs.next();//첫 레코드로 접근
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<form method=post action="update_ok.jsp">
 <input type=hidden name=id value="<%=id%>">
이름 : <%=rs.getString("name") %><p>
제목<input type=text name=title  size=40 value="<%=rs.getString("title") %>"><p>
내용<textarea cols=40 rows=5 name=content> <%=rs.getString("content") %> </textarea><p>
  <input type=submit value=전송>
</form>
</body>
</html>

