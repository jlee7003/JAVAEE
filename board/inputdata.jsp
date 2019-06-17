<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@page import="java.sql.*" %>
<%
//DB 연결및 쿼리를 사용할 수 있는 환경
//Connection , Statement
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";


String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
// 사용자가 입력한 값 가져오기
//request.getParameter("name");

Statement stmt=conn.createStatement();//쿼리를 실행시키기 위해 추가

String a=request.getParameter("name"); 
String b=request.getParameter("title");//html의 name이 title인 곳의 value를 가지고 오겠다.
String c=request.getParameter("content"); 
    
//입력할 쿼리문 작성
String sql="insert into board(name,title,content) "; //id는 특수한 목적이 있을때
sql=sql+"values('"+a+"','"+b+"','"+c+"')";
    
stmt.executeUpdate(sql);    
/*out.println(sql); sql 명령어 출력 - 에러 발생시 입력 해보는게 좋음*/
stmt.close();
conn.close();
%>
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>