<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String bang=request.getParameter("bang");
int y=Integer.parseInt(request.getParameter("y"));
int m=Integer.parseInt(request.getParameter("m"));
int d=Integer.parseInt(request.getParameter("d"));
int suk=Integer.parseInt(request.getParameter("suk"));

Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");


String writeday = sdf.format(today);
//퇴실일 계산하기
LocalDate in_date=LocalDate.of(y,m,d);//년월일을 in_date가 가지게 된다
LocalDate out_date=in_date.plusDays(suk);//localdate+suk; in_date 부터 suk한 일뒤
//쿼리 작성
String sql="insert into reserve(name,phone,bang,in_date,out_date,writeday) values('"+name+"','"+phone+"','"+bang+"','"+in_date+"','"+out_date+"','"+writeday+"')";

stmt.executeUpdate(sql);
stmt.close();
conn.close();
response.sendRedirect("reserve.jsp");

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