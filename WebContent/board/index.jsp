<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     
    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<!--     스크립트 영역 -->
<%
String aa="jdbc:mysql://localhost:3307/ee5?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
ResultSet rs;//화면에 데이터베이스 표현 할 것이면 사용
String sql="select * from guest";
rs=stmt.executeQuery(sql);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
background-image: url('img_lights.jpg');
border:1px solid black;
}
td{
border:1px solid black;
}
div{
background-size: cover;
background-image: url('img_lights.jpg');
width:300px;
height:300px;
}
</style>
</head>
<body>
<table>
<tr>
<td>name</td>
<td>title</td>
<td>content</td>
<td>email</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("id") %></td>
    <!-- sql명령어에서 id값을 가지고옴:rs.getString("id")->
<td><%=rs.getString("name") %></td>
<td> <a href="content.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("title") %></a></td>
<!-- content 링크로 갈경우 id의 값을 가져가야 하므로 ?id뒤에 sql콘솔창에서 나타난 id값(get.String("id")값을 가지고 온다. -->
<td><%=rs.getString("email") %></td>
</tr>
<%
} 
%>
<tr>
<td colspan=5><a href="input.html">글쓰기</a></td>
<td><a href="delete.jsp">삭제</a></td>
</tr>
</table>
<div> 라라</div>	
</body>
</html>
<%
stmt.close();
rs.close();
 %>
