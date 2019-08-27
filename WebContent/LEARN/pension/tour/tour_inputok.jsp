<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>      
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%> 

<%
//데이터를 받는 form
String path="C:/Users/alfo1-3/eclipse-workspace3/TIL/WebContent/LEARN/pension/tour/tour_jpg";
int max=1024*1024*10;
MultipartRequest multi=new MultipartRequest(request,path,max
		,"utf-8",new DefaultFileRenamePolicy());

String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
// request되는 값의 한글코드처리

//파일값 읽어오기
String name=multi.getParameter("name");
String title=multi.getParameter("title");
String content=multi.getParameter("content");

String fname=multi.getFilesystemName("fname");
Date today=new Date(); // 현재 날짜 객체 생성
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
// 표현할 날짜 형식의 객체를 생성
String writeday= sdf.format(today); 

String sql="insert into tour(name,title,content,fname,writeday) values('"+name+"','"+title+"','"+content+"','"+fname+"','"+writeday+"')";
stmt.executeUpdate(sql);


response.sendRedirect("tourlist.jsp");

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