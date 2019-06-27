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

tr td:nth-child(2){
margin-left:30px;
text-align:left;
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
		<form method=post action=write_ok.jsp>
		<table width=800 >
		<caption> <h3>글쓰기</h3></caption>
		<tr>
		<td>제목</td>
		<td><input type=text name=title></td>
		</tr>
		<tr>
		<td>작성자</td>
		<td><input type=text name=name></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type=text name=pwd></td>
		</tr>
		<tr>
		<td>내용</td>
		<td><textarea cols=40 rows=7 name=content></textarea></td>
		</tr>
		<tr>
		<td>혈액형</td>
		<td>
		<input type=radio name=blood value=1> A
		<input type=radio name=blood value=2> B
		<input type=radio name=blood value=3> AB
		<input type=radio name=blood value=4> O
		</td>
		</tr>
		<tr>
		<td>취미</td>
		<td>
		<input type=checkbox name=hobby value=1> 낚시
		<input type=checkbox name=hobby value=2> 독서
		<input type=checkbox name=hobby value=3> 게임
		<input type=checkbox name=hobby value=4> 자전거
		<input type=checkbox name=hobby value=5> 영화
		<input type=checkbox name=hobby value=6> 운동
		
		</td>
		</tr>
		<tr>
		<td>태어난해</td>
		<td>
		<select name=birth>
		<option>선택</option>
		<%
		for(int i=2019;i>=1900;i--)
		{
		%>
		<option value=<%=i%>> <%=i%></option>
			<%
		}
		%>
		</select>
		</td>
		<td colspan=2 align=center><input type=submit value=저장하기></td>
		</tr>
		
		
		</table>
		</form>
		</div>

	</div>
</body>
</html>

<%@ include file="../main/bottom.jsp"%>