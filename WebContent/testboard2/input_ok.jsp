<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@ page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");
String title=request.getParameter("title");
String content=request.getParameter("content");
String email=request.getParameter("email");
String sex=request.getParameter("sex");

String juso=request.getParameter("juso");
Date today = new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String writeday=sdf.format(today);
String[] food=request.getParameterValues("food");
//배열은 getParameterValues를 사용해야 한다.

String foodarray="";

for(int i=0;i<food.length;i++)
{
    foodarray=foodarray+food[i]+",";//split을 사용하기 위해 , 을 사용함
}


String sql="insert into test_board2(name,pwd,title,content,email,sex,food,juso,writeday)";
sql=sql+"values('"+name+"','"+pwd+"','"+title+"','"+content+"','"+email+"','"+sex+"','"+foodarray+"','"+juso+"','"+writeday+"')";
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
<%
stmt.close();
conn.close();
%>