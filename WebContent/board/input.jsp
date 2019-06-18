<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
//html 태그에서 정보를 가지고 오는 방법
//폼 입력양식에서 입력된 값을 가져오기                                        //form태그 안에서
String a=request.getParameter("name"); //name=name
String b=request.getParameter("title");//name=title
String c=request.getParameter("content");//name=content

String sql="insert into guest(name,title,content) "; //id는 특수한 목적이 있을때
sql=sql+"values('"+a+"','"+b+"','"+c+"')"; //문자열이므로 공백을 더해주어야 함
//''작은 따옴표는 sql에게 문자라는 것을 알리는 것이고 "" 큰따옴표는 jsp 때문에

stmt.executeUpdate(sql);//쿼리문 실행(database 에서 실행이 됨) ->저장
//list.jsp로 이동하기
response.sendRedirect("list.jsp");
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