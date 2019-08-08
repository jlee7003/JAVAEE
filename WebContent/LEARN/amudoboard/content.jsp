<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
	String aa = "jdbc:mysql://localhost:3307/amudo?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	String id = request.getParameter("id");

	String sql = "select * from board where id=" + id;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
		<table>
		  <tr>
      <td> 제 목 </td>
      <td> <%=rs.getString("title")%></td>
    </tr>
			<tr>
				<td>이름</td>
				<td><%=rs.getString("name")%></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%=rs.getString("content")%></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><%=rs.getString("rnum")%></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=rs.getString("writeday")%></td>
			</tr>
			<tr>
				<td>age</td>
				<%
					String age = "";

					switch (rs.getInt("age")) {
						case 0 :
							age = "10대";
							break;
						case 1 :
							age = "20대";
							break;
						case 2 :
							age = "30대";
							break;
						case 3 :
							age = "40대";
							break;
						case 4 :
							age = "50대";
							break;
					}
				%>

				<td><%=age%> <%=rs.getInt("age")%></td>
			</tr>
			<tr>
				<td>성별</td>
				<%
				 String sung;
		        if(rs.getInt("sung")==0)  // 0이면 남자, 1이면 여자
		        	sung="남자";
		        else
		        	sung="여자";
				%>
				<td><%=sung%></td>
				<td>성별: <input type=radio name=sung value=0>남자 <input
					type=radio name=sung value=1>여자
				<td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=rs.getString("writeday")%></td>
			</tr>
			<tr>
				<td><a href="list.jsp">목록</a></td>
				<td><a href="update.jsp?id=<%=id%>">수정</a> <a
					href="javascript:del()">삭제</a> <a href="write.jsp">글쓰기</a></td>
			</tr>
		</table>



	<div id=delete style="display: none">
		<form method=post action=delete_ok.jsp >
			<input type=hidden name=id value=<%=id%>> 비밀번호 <input type=password
				name=pwd> <input type=submit value=삭제> <input
				type=button onclick=hide() value=취소>
		</form>
	</div>
	<script>
	function del()
	{
		document.getElementById("delete").style.display="block";
	}
	function hide()
	{
		document.getElementById("delete").style.display="none";
	}
</script>
	<style>
#delete {
	position: absoulute;
	left: 100px;
	top: 100px;
	border: 1px solid black;
	width:350px;
}
</style>
</body>

</html>
