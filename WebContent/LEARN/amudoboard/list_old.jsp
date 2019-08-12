<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>      
<%
  // DB연결
   String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc); 
   Statement stmt=conn.createStatement();
  // 가져올 쿼리 작성 => select(보기)
  // ex) select 필드명,필드명 (전체:*) from 테이블명 		  
   String sql="select * from board";
  // select한 결과값을 사용하려고 하면 ResultSet에 가져와야 된다.
   ResultSet rs=stmt.executeQuery(sql);
  
  
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <table align=center width=600 border=1 cellspacing=0>
   <caption> <h2> 게시판 </h2></caption>
   <tr height=30 align=center>
     <td> 이름 </td>
     <td> 제목 </td>
     <td> 조회수 </td>
     <td> 작성일 </td>
   </tr>
   <%
    while(rs.next())
    {
   %>
   <tr height=40>
     <td align=center> <%=rs.getString("name")%> </td>
     <td> <a href="add.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title")%> </a> </td>
     <td align=center> <%=rs.getString("rnum")%> </td>
     <td align=center> <%=rs.getString("writeday")%> </td>
   </tr>
  <%
    }
  %>
   <tr>
     <td colspan=4 align=right> <a href="write.jsp"> 글쓰기 </a> </td>
   </tr>
  </table>


<%
  /*
   //레코드 출력
   while(rs.next()) // 레코드가 존재하면 true, 없으면 false
   {
	   out.print("<table><tr><td>"+rs.getString("name")+" ");
	   out.print(rs.getString("title")+" ");
	   out.print(rs.getString("rnum")+" ");
	   out.print(rs.getString("writeday"));
	   out.print("<br>");
   }  // next()가 true이면 while문이 실행 false이면 종료
   */
   /*
   out.print(rs.next()); // rs 객체를 만든후에 처음실행하면 첫번째 레코드로 이동
   out.print(rs.getString("name"));
   
   out.print(rs.next());
   out.print(rs.getString("name"));
   
   out.print(rs.next());
   out.print(rs.getString("name"));
   
   out.print(rs.next());
   //out.print(rs.getString("name")); */
%> 
</body>
</html>
<%
  rs.close();
  stmt.close();
  conn.close();
%>












