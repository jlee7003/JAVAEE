<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@ include file="login.jsp"%>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
String id=request.getParameter("id");

String sql="select * from test_board2 where id="+id;

ResultSet rs=stmt.executeQuery(sql);

rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
td{
border: 1px solid black;
}
table{
margin-top:50px;
border: 1px solid black;
}
</style>
<body>
<table align=center>
<tr>
<td>이름</td>
<td><%=rs.getString("name")%></td>
</tr>
<tr>
<td>제목</td>
<td><%=rs.getString("title")%></td>
</tr>
<tr>
<td>이메일</td>
<td><%=rs.getString("email")%></td>
</tr>
<tr>
<td>주소</td>
<%String juso="";
  switch(rs.getString("juso"))
  {
  case "1": juso="서울"; break;
  case "2": juso="경기도"; break;
  case "3": juso="강원도"; break;
  case "4": juso="충청도"; break;
  case "5": juso="경상도"; break;
  case "6": juso="전라도"; break;
  case "7": juso="울릉도"; break;
  case "8": juso="제주도"; break;
  case "9": juso="독도"; break;
  }
%>
<td><%=juso%></td>
</tr>
<tr>
<td>성별</td>
<%String sex="";
  switch(rs.getString("sex"))
  {
  case "0": sex="남자"; break;
  case "1": sex="여자"; break;
  }
%>
<td><%=sex%></td>
</tr>
<tr>
<td>음식</td>
<%
String[] food=rs.getString("food").split(",");
String fod="";
for(int i=0; i<food.length;i++)
  switch(food[i])
  {
  case "1": fod=fod+"참치김밥 "; break;
  case "2": fod=fod+"그냥김밥 "; break;
  case "3": fod=fod+"치즈깁밥 "; break;
  case "4": fod=fod+"카레김밥 "; break;
  case "5": fod=fod+"짜장김밥 "; break;
  case "6": fod=fod+"피자김밥 "; break;
  case "7": fod=fod+"제육김밥 "; break;
  case "8": fod=fod+"꼬마김밥 "; break;
  case "9": fod=fod+"계란김밥 "; break;
  }
%>
<td><%=fod%></td>
</tr>
<tr>
<td>작성일</td>
<td><%=rs.getString("writeday")%></td>
</tr>
<tr>
<td>조회수</td>
<td><%=rs.getString("rnum")%></td>
</tr>
<tr>
<td>내용</td>
<td><%=rs.getString("content")%></td>
</tr>
<tr>
<td colspan=2>
<a href="index.jsp">목록</a>
<a href="update.jsp?id=<%=rs.getString("id")%>">수정</a>
<a href="delete.jsp?id=<%=rs.getString("id")%>">삭제</a>
</td>
</tr>
</table>
</body>
</html>
<%
stmt.close();
conn.close();
%>