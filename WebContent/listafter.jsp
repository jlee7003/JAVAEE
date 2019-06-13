<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
ResultSet rs; // 테이블내용을 읽어와서 저장할 공간
String sql="select * from guest"; //전체 다 보여줌
rs=stmt.executeQuery(sql);//select 명령을 실행한 결과값을 rs에 저장 ,항목으로 불러야함

// 레코드 포인터를 아래로 한칸 내려주는 명령어 두번째 레코드



/*
''은 sql에서의 명령어를 넣어주기 위해 넣는 것이고 자바 EE에서의 변수는 문자열로 취급하기에 일일히
문자열에 ""따옴표를 추가하는 것이다.
*/

	
	
	
	
/*out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");*/

%> <!-- 꺽쇠%는 jsp 명령어일 경우에 사용 실행할 경우 화면에 출력 되지 않는다. -->
<style>
table td {
  background: skyblue;
  border: 3px solid pink;
  font-size:15px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:10px;
  border-radius: 5px;
}
table {
padding-top:0px;
border: 0px solid black;
margin: auto;

}
body{
background-color: black;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}

</style>
<script>

</script>
<body>
<h6>EUIHO BOARD</h6>
<table width=500 border=1  >
<tr>
 <td> ID</td>
  <td>이름</td>
  <td>제목</td>
</tr>
<%
while(rs.next()) //조건에 따라 실행 참이면 반복문으로 실행 거짓이면 실행 ㄴㄴ
{	
	%>

<tr>
<td> <%=rs.getString("id") %> </td> 
  <td> <%=rs.getString("name") %> </td> 
  <td> <a href="listcontent.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("title") %> </td> 
  <!--equal(=) =out.println()-->
</tr>
<%
}
%>
<tr>
<td colspan=3> <a href="input.html">글쓰기 </a></td>
</tr>
</table>
</body>
