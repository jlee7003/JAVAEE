<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String sql="select * from test_board where id="+id;
ResultSet rs= stmt.executeQuery(sql);

rs.next();



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method=post action="update_ok.jsp">
<table>
<tr>

<td>이름: <input type=text disabled name=name value="<%=rs.getString("name")%>"> <td>
</tr>
<tr>
<td>제목: <input type=text  name=title value="<%=rs.getString("title")%>"><td>
</tr>
<tr>
<td>주소:<select name=juso>
  <option value=0>선택</option>
  <option value=1>경기도</option>
  <option value=2>서울</option>
  <option value=3>강원도</option>
  <option value=4>전라도</option>
  <option value=5>경상도</option>
  <option value=6>충청도</option>
  <option value=7>제주도</option>
  <option value=8>해외</option>
  </select><td>
</tr>
<tr>
<td>성별: <input type=radio name=sex value=1>남자
<input type=radio name=sex  value=2>여자 <td>
</tr>
<tr>
<td>음식:<input type=checkbox name=food value=1>곱창
<input type=checkbox name=food value=2>초밥
<input type=checkbox name=food value=3>김치볶음밥
<input type=checkbox name=food value=4>쌀국수
<input type=checkbox name=food value=5>돼지국밥
<input type=checkbox name=food value=6>선지해장국
<input type=checkbox name=food value=7>추어탕
<input type=checkbox name=food value=8>홍어회
<td>
</tr>
<tr>
<td>이메일: <input type=text  name=email value="<%=rs.getString("email")%>"><td>
</tr>
<tr>
<td>내용: <textarea name=content cols=40 rows=5> <%=rs.getString("content")%> </textarea><td>
</tr>
<tr>
<td><input type=submit value=전송><input type=hidden name=id value="<%=id%>">
</td>
</tr>
</table>
</form>
</body>
</html>