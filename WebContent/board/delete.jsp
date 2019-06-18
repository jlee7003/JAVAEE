<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //DB 연결

//삭제할 레코드의 id값 가져오기
String id=request.getParameter("id");

//삭제 쿼리문 작성(where문이 포함)
String sql="delete from board where id="+id;

//쿼리문 실행
stmt.executeUpdate(sql);
//쿼리문 실행후 list.jsp로 이동
response.sendRedirect("list.jsp");

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