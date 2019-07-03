<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.
//db연결
//필요한 값들 가져온다.
//title,content,id
//수정할 쿼리문 작성
//쿼리문 실행

String id=request.getParameter("id");
String b=request.getParameter("titl");
String c=request.getParameter("content");

String sql="update guest set title='"+b+"',content='"+c+"' where id="+id;

stmt.executeUpdate(sql);//쿼리문 실행(database 에서 실행이 됨) 변화가 있으므로 업데이트 ->저장
//list.jsp로 이동하기
response.sendRedirect("listcontent.jsp?id="+id);

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