<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
//1.데이터베이스 연결해주기
//2.SQl명령어 만들기

  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/ee5?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  ResultSet rs;
  
  
  
  //sql 명령어에서 가져오고자 하는 값을 가져오기
  String id=request.getParameter("id");
//   getParameter("x") 데이터베이스에서 id값 가지고 오기
  //select해서 id값을 불러오면 한명의 자료를 볼 수 있기에 String만 가지고 온다.
  String sql="select * from guest where id="+id;
  
  rs=stmt.executeQuery(sql);
  
  rs.next();
  
  %>
  <!DOCTYPE html>
  <html>
  <head>
  <meta charset="utf-8">
  <title>Insert title here</title>
  </head>
  <body>
     <table width=500 border=1>
       <tr>
         <td> 이름 </td>
         <td> <%=rs.getString("name") %> </td>
<!--          rs.getString("x") 데이터베이스의 값을 가져오기-->
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
       <a href="delete.jsp?id=<%=rs.getString("id")%>">삭제</a>
       
       </td>
       </tr>
     </table>
  </body>
  </html>
  
  