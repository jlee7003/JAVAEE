<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="java.sql.*" %> 
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt = conn.createStatement(); 
ResultSet rs;

String id=request.getParameter("id"); // 보고자 하는 레코드의 id값
String sql="select * from guest where id="+id;
// where조건에 의해 id값이 일치하는 하나의 레코드만 가져온다..
rs=stmt.executeQuery(sql);

rs.next(); //지정된 데이터 값이 나올수 있게
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
   </table>
</body>
</html>













