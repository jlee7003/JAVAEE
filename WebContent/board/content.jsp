<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //DB 연결

//content.jsp는 전체레코드 중에서 사용자가 선택한 하나의 레코드 보기

//보고싶은 레코드의 유일한 값인 id가져오기
String id=request.getParameter("id");

//하나의 레코드만 보는 쿼리 작성
String sql="select * from board where id="+id;
//ResultSet에 무조건 가져오기
ResultSet rs=stmt.executeQuery(sql); //테이블 내용 -> rs로 복사
rs.next();//첫번째 레코드로 이동
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
    <td><%=rs.getString("name") %></td>
 </tr>
  <tr> 
    <td>제목 </td>
    <td><%=rs.getString("title") %></td>
 </tr>
  <tr height=200> 
    <td> 내용 </td>
    <td><%=rs.getString("content") %></td>
 </tr>
 <tr>
 <td colspan=2 align=center>
 <a href="update.jsp">수정 </a>
 <!-- 수정하고자 하는 레코드의 id값이 전달되어야함 -->
 <a href="delete.jsp?id=<%=id%>">삭제</a>
 <!--  삭제하고자 하는 레코드의 id값이 전달 -->
 <a href="list.jsp"> 목록 </a>

 <!-- list.jsp로 이동하면 됨 -->
 </td>
 </tr>
 </table>

</body>
</html>