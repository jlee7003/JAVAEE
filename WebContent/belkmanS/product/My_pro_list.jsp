<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?after1231233">
<script src="../etc/main.js"></script>
</head>
<style>
img{
width:166px;
height:429px;
padding:20px;
margin:20px;
}
</style>
<body>
  <jsp:include page="../nav.jsp" flush="false" />
  <div id=right>
    <section class=list_section> 
<!--  pro_list start -->
<%@ page import="java.sql.*" %> 
<%@ page import="belkman.Jdbc.Connect" %>    
<%// DB 연결
Connection conn=Connect.connection2();
Statement stmt=conn.createStatement();
//가져올 쿼리 작성
String sql= "select * from product where pcode like 'p01%' limit 0,24";
//쿼리 실행
ResultSet rs=stmt.executeQuery(sql);

rs.next();
%>
<table>


<tr>
<%

int numberP=0;


while(rs.next())
{

	numberP++;
%>
<td><img src="img/<%=rs.getString("plist")%>"> <p>
<%=rs.getString("pname")%><p>
<%=rs.getString("price")%> <p>
</td>
<% 
if(numberP%4 ==0 )
{
	%>
	<tr>
	
	<%
}
%>

<% 
}
 %>
 <% 
if(numberP%4 ==0 )
{
	%>
	</tr>
	<%
}
%>
 

</table>

<!--  pro_list end    -->
    </section>
    <jsp:include page="../footer.jsp" flush="false" />
    
<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
  </div>  

</body>
</html>




