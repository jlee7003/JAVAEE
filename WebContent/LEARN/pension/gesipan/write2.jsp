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
	height: 600px;
	display: flex;
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
		
		</div>

	</div>
</body>
</html>

<%@ include file="../main/bottom.jsp"%>