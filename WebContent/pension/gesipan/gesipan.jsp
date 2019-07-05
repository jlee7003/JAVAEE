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

	String sql = "select * from gesipan";
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


tr:nth-child(1)>td {
	height: 10px;
	background: darkgray;
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

#section {
	width: 1200px;
	height: 800px;
	display: flex;
	margin-left:200px;
	align-items: center;
	justify-content: center;
	text-align: center;
}

#section #left {
	width: 400px;
	height: 600px;
	margin: auto;
	margin-top:30px;
}
#section #right {
	width: 800px;
	height: 600px;
	margin: auto;
    margin-top:30px;
    margin-left:50px;
}


#section #left li {
	width: 280px;
	display: flex;
	align-items: center;
	justify-content: center; height : 60px;
	border-bottom: 1px solid #dddddd;
	list-style-type: none;
	height: 60px

}
#right
{
padding-left:150px;
margin-left:100px;
}
table {
margin-left:40px;
width:800px;
padding-top:20px;
border: 0px solid black;
margin: auto;

}
tr td:nth-child(2){
width:600px;

}
body{
background-color: white;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}
#content{

height:300px;
}
#idid{
text-align:center;
background:darkgray;
}

#section #left li:hover {
	width: 280px;
	color: brown;
	font-weight: 900; display : flex;
	align-items: center;
	justify-content: center;
	height: 60px;
	border-bottom: 1px solid #dddddd;
	list-style-type: none;
	display: flex
}

#head{
	font-size: 60px;
	display:flex;
	justify-content:flex;
	}

#section #right #first td{
	height:40px;
	border-top:2px solid black;
	border-botton:1px solid black;
}
#section #right #second td{
	height:30px;
	border-bottom:1px solid #dddddd;
}
</style>
</head>
<body>
	<div id=section>

		<div id=left>
			<ul>
				<li>로고</li>
				<li><a href=../notice/noticelist.jsp>공지사항</a></li>
				<li><a href=../gesipan/gesipan.jsp>계시판</a></li>
				<li>여행후기</li>
				<li>Q&A</li>
			</ul>
		</div>
		<div id=right>
		<div id=head>계시판</div>
			<table cellspacing=0 width=800 align=center>
			<caption style="text-align:right">
			     <a href="write.jsp">글쓰기</a>
			</caption>

				<tr id=first>
					<td>번호</td>
					<td>제목</td>
					<td>글쓴이</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
				<%
					while (rs.next()) {
				%>
				<tr id=second>
					<td><%=rs.getString("id")%></td>
					<td align=left><a href="rnumadd.jsp?id=<%=rs.getInt("id")%>"><%=rs.getString("title")%></a>
					</td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("writeday")%></td>
					<td><%=rs.getString("rnum")%></td>
					<%if (session.getAttribute("userid") != null) //로그인이 안되있을 경우 진입이 불가한 오류 해결 비교를 아예 못하기에 오류가 발생하기에 비교해줌 
					 if (session.getAttribute("userid").equals("admin")) {//-> 2중 if문의 이유 null이 아니고 admin일 경우 삭제 링크가 뜨게 만듬
						%> <td><a href="delete.jsp?id=<%=rs.getString("id")%>">삭제</a></td>
						<%
							}
						%>
					
					
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