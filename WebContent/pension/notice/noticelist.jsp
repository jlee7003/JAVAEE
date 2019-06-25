<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<%@ include file="../main/top2.jsp"%>

<%
	// DB 연결및 쿼리를 사용할수 있는환경
	// Connection , Statement 
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	String sql = "select * from gongji";
	ResultSet rs = stmt.executeQuery(sql);

	// 입력양식의 값을 가져오기
	request.setCharacterEncoding("utf-8");
%>
<!--     제목 작성일 조회수 내용 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#section {
	height: 600px;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

td {
	border: 1px solid pink;
	margin: auto;
}

tr:nth-child(1)>td {
	height: 10px;
	background: darkgray;
}

table {
	margin: 0px;
	padding: 0px;
	border-spacing: 0px;
	border: 1px solid black;
}

table td {
	background: skyblue;
	border: 3px solid pink;
	font-size: 15px;
	letter-spacing: 2px;
	padding: 28px;
	border-spacing: 10px;
	border-radius: 5px;
}

table {
	padding-top: 20px;
	border: 0px solid black;
	margin: auto;
}

body {
	background-color: white;
}

h6 {
	color: white;
	font-size: 100px;
	text-align: center;
}

#content {
	height: 300px;
}

#idid {
	text-align: center;
	background: darkgray;
}
</style>
</head>
<body>
	<div id=section>

		<div id=left></div>

		<div id=right>
			<table>

				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>글쓴이</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("id")%></td>
					<td><a href="notice_content.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title")%></a>
					</td>
					<td>master</td>
					<td><%=rs.getString("writeday")%></td>
					<td><%=rs.getString("rnum")%></td>
				</tr>
				<%
					}
				%>
				<tr>
					<td colspan=5>
						<%
							if (session.getAttribute("userid") != null) //로그인이 안되있을 경우 진입이 불가한 오류 해결 비교를 아예 못하기에 오류가 발생하기에 비교해줌 
								if (session.getAttribute("userid").equals("admin")) {
						%> <a href="../notice/notice_write.jsp" style="text-align: right">글쓰기</a>
						<%
							}
						%>

					</td>
				</tr>
			</table>

		</div>

	</div>
</body>
</html>

<%@ include file="../main/bottom.jsp"%>