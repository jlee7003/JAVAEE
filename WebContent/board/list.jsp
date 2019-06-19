<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //DB 연결



String sql="select * from board order by id desc"; //전체 다 보여줌
ResultSet rs; // 테이블내용을 읽어와서 저장할 공간  
              // 테이블의 내용을 jsp에서 접급하기 위한 공간으로 이동(ResultSet)
              //rs 가져오면 레코드포인터는 항상 첫번째 레코드 위에 존재
              //첫번째 레코드로 이동하기 위한 명령어 rs.next(); -> 다음 레코드로 이동
              //rs에서 데이터 읽어오는 방법
              //-> out.println(rs.getString("name"));
rs=stmt.executeQuery(sql);//select 명령을 실행한 결과값을 rs에 저장 ,항목으로 불러야함



/*rs.next();-> 메소드는 리턴값을 가진다
  out.println(rs.getString("name"));
  out.println(rs.getString("title"));

  
*/ 

//javascript
%>
<style>
table{
margin: auto;

}

h6{
text-align: center;
margin: auto;
}
</style>
<script><!--html-->

</script>
<body>
<h6>EUIHO BOARD</h6>
<table width=500 border=1>
<tr>
 <td> ID</td>
  <td>이름</td>
  <td>제목</td>
</tr>
<%
while(rs.next()) //조건에 따라 실행 참이면 반복문으로 실행 거짓이면 실행 ㄴㄴ(종료)
{	             //레코드가 있다면 참 없다면 거짓
	%>

<tr>
<td> <%=rs.getString("id") %> </td> 
  <td> <%=rs.getString("name") %> </td> 
  <td> <a href="content.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("title") %></a> </td> 
  <!--equal(=) =out.println()-->
</tr>
<%
}
%>
<tr>
<td colspan=3> <a href="inputdata.html">글쓰기 </a></td>
</tr>
</table>
</body>
<%
stmt.close();
conn.close();
%>

