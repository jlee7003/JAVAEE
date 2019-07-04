<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
String id=request.getParameter("id");

String sql="select * from test_board where id="+id;
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
table{
border:1px solid black;
}

td{
border:1px solid black;
}
</style>
<body>
<table width=400 height=600 align=center>
<tr>
<td>이름</td>
<td><%=rs.getString("name")%></td>
</tr>
<tr>
<td>제목</td>
<td> <%=rs.getString("title")%></td>
</tr>

<tr>
<td>주소</td>
<%
String juso="";
            switch(rs.getInt("juso")) // 1~4까지의 값
            {
               case 1: juso="경기도"; break;
               case 2: juso="서울"; break;
               case 3: juso="강원도"; break;
               case 4: juso="전라도"; break;
               case 5: juso="경상도"; break;
               case 6: juso="충청도"; break;
               case 7: juso="제주도"; break;
               case 8: juso="해외"; break;
            }
            %>
<td><%=juso%></td>
</tr>
<tr>
<td>이메일</td>
<td><%=rs.getString("email")%></td>
</tr>
<tr>
<td>성별</td>
<%
            String sex="";
            switch(rs.getInt("sex")) // 1~4까지의 값
            {
               case 1: sex="남자"; break;
               case 2: sex="여자"; break;
            }
               %>
<td><%=sex%></td>

</tr>
<tr>
<td>음식</td>
<%
String[] foodd=rs.getString("food").split(",");       
String fod="";
for(int i=0; i<foodd.length; i++)
{
            switch(foodd[i]) // 1~4까지의 값
            {
               case "1": fod=fod+"곱창"; break;
               case "2": fod=fod+"초밥"; break;
               case "3": fod=fod+"김치볶음밥"; break;
               case "4": fod=fod+"쌀국수"; break;
               case "5": fod=fod+"돼지국밥"; break;
               case "6": fod=fod+"선지해장국"; break;
               case "7": fod=fod+"추어탕"; break;
               case "8": fod=fod+"홍어회"; break;
            }
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
<tr >
<td>내용</td>
<td height=200><%=rs.getString("content")%></td>
</tr>
<tr>
<td><a href="index.jsp" >목록</a></td>

<td><a href="update.jsp?id=<%=rs.getString("id") %>" >수정</a>
<a href="delete.jsp?id=<%=rs.getString("id") %>" >삭제</a>
<a href="input.html" >글쓰기</a>
</td>
</tr>

</table>
</body>
</html>
<%
stmt.close();
conn.close();
%>