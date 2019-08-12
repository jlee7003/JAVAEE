<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
  String name="홍길동";
String age="33";
String title="안녕하세요!! 첫번째입니다";
String writeday="2019-08-07";
%>
<body>
<!--  out.println("<table border=1><tr><td>"+name+"</td></table>"); -->
<!--  out.println("<td>") -->

<hr>

<table border=1 width=600 height=100>
<tr>
<td align=center><%=name %></td>
<td><%=age %></td>
<td><%=title %></td>
<td><%=writeday %></td>
</tr>
</table>
</body>
</html>