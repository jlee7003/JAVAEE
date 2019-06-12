<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //쿼리문 시작 시키는 객체

ResultSet rs;// 데이터 수령 객체

String id=request.getParameter("id");//form에 저장된 값을 부르는 형식
String sql="select * from guest where id="+id; //값을 데이터베이스와 연결 시켜야함

rs=stmt.executeQuery(sql);  //데이터베이스를 rs객체에 넣어준것

rs.next();//가져오는 레코드는 값이 하나이기 때문에 rs.next()를 하나만 넣어준것


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
     <table width=500 border=1>
     <tr>
       <td> 이름 </td>
       <td> <%=rs.getString("name") %> </td>
     </tr>
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title") %> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <%=rs.getString("content") %> </td>
     </tr>
     <tr>
     <td colspan=2>
     <a href="delete.jsp?id=<%=rs.getString("id") %>">삭제</a> 
     </td>
     </tr>
   </table>

 


</body>
</html>