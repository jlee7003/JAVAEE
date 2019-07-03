<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>

<%@ include file="../main/top2.jsp"%>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement();

//삭제하고자 하는 레코드의 id, pwd를 읽어오기
String id=request.getParameter("id");
String pwd=request.getParameter("pwd"); //content에서의 입력한 비밀번호 값

// 방금 입력한 pwd와 비교해주어야함 그러므로 DB의 값 읽어오기

String sql="select * from gesipan where id="+id; //데이터베이스의 비밀번호값
ResultSet rs=stmt.executeQuery(sql);
rs.next();

//입력된 비밀번호와 db에 있는 비번의 확인후 작업
if(pwd.equals(rs.getString("pwd")))
{//비번이 맞을경우
	sql="delete from gesipan where id="+id;
//out.print(sql);
    stmt.executeUpdate(sql);
    response.sendRedirect("gesipan.jsp");
}
else
{//비번이 아닌경우
	response.sendRedirect("gesipanlist.jsp?id="+id);
	//out.print(sql);
}
stmt.close();
conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

</style>
<body>
<table>

</table>
</body>
</html>