<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@ include file="../main/top2.jsp"%>
<%@page import="java.sql.*"%>
<%
	// content.jsp는 하나의 레코드의 내용을 전부 보여준다...

	// DB연결
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	// 읽어오고자 하는 레코드의 id값을 받기
	String id =request.getParameter("id");
	String Page =request.getParameter("page");
	   String ref=request.getParameter("ref");
	    String depth=request.getParameter("depth");
	    String seq=request.getParameter("seq");
	    String redel=request.getParameter("redel");
	// 쿼리작성 => 하나의 레코드만 읽어오는 쿼리
	String sql = "select * from qna where id=" + id;
	// select * from board where id=3;
	// select한 결과값을 사용하려고 하면 ResultSet에 가져와야 된다.
	ResultSet rs = stmt.executeQuery(sql);
	// 하나의 레코드만 읽어온다..
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>


tr:nth-child(1)>td {
	height: 10px;
	background: #eeeeee;
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
	height: 1000px;
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
	justify-content: center;
	 height : 60px;
	border-bottom: 1px solid #dddddd;
	list-style-type: none;
	height: 60px
}
table td {
  background: white;
  border: 3px solid #eeeeee;
  font-size:15px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:10px;
  border-radius: 5px;
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
 #del_form {
     position:absolute; 
/*      절대좌표 */
     left:930px;
     top:870px;
/*      레이어의 왼쪽, 상단으로부터의 길이 */
     width:250px;
     height:90px;
     background:#eeeeee;
     border-radius:5px;
     border:1px solid darkgray;
     visibility:hidden;
     text-align:center;
     display:flex;
     justify-content:center;
     align-items:center;
/*      보이기속성 숨기기 */
   }
   
  #del_form input[type=submit]{
  margin-top:10px;
  width:60px;
  height:25px;  
  border-radius:5px;
  background-color:darkgray;
  
  }
   #del_form input[type=button]{
  margin-top:10px;
  width:60px;
  height:25px;  
  border-radius:5px;
  background-color:darkgray;
  
  }
  
table td {
  background: white;
  border: 1px solid pink;
  font-size:12px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:5px;
  border-radius: 5px;
}
table {

border: 0px solid black;
margin: auto;

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
#datname{
width:40px;
}
#datcontent
{
width:200px;
}


</style>
</head>
<!-- <!--1. 질문에 따른 답변이 바로 아래에 생겨야 함, 질문과 답변을 하나의 그룹으로 만들어야함  ref
    2. 질문과 답변을 나열할때 필요한 값  어느 글에 대한 답변인지 구분 답변의 깊이, depth
    3. 질문에 대해서 답변이 달릴때 나타나는 순서(같은 그룹내에서의 순서) seq
    질문하기 write 답변하기 write
 -->
<body>
<div id=section>
<div id=left>
		
		
			<ul>
				<li>로고</li>
				<li><a href=../notice/noticelist.jsp>공지사항</a></li>
				<li><a href=../gesipan/gesipan.jsp>계시판</a></li>
				<li><a href=../tour/tourlist.jsp>여행후기</a></li>
				<li>Q&A</li>
			</ul>
		</div>
		<div id=right>
	<!-- 이름, 제목, 내용, 조회수, 작성일, 나이, 성별 -->

	<table width=600 border=1 cellspacing=0>
		<tr>
			<td>제 목</td>
			<td colspan=3><%=rs.getString("title")%></td>
		</tr>
		<tr>
			<td>이 름</td>
			<td><%=rs.getString("name")%></td>
			<td>조회수</td>
			<td><%=rs.getString("rnum")%></td>
		</tr>
		<tr height=200>
			<td>내 용</td>
			<td colspan=3><%=rs.getString("content")%></td>
		</tr>
		<%
			String age = "";
			switch (rs.getInt("age")) // 10대 ~50대 => 0,1,2,3,4
			{
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

			String sung;
			if (rs.getInt("sung") == 0) // 0이면 남자, 1이면 여자
				sung = "남자";
			else
				sung = "여자";
		%>
		<tr>
			<td>나 이</td>
			<td><%=age%></td>
			<td>성 별</td>
			<td><%=sung%></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td colspan=3><%=rs.getString("writeday")%></td>
		</tr>
		<tr>
			<td colspan=4 align=center><a href="update.jsp?id=<%=id%>">
					수정 </a> <a href="javascript:del()"> 삭제 </a> <a
				href="content.jsp?page=1"> 목록 </a> <a
				href="rewrite.jsp?ref=<%=rs.getInt("ref")%>&depth=<%=rs.getInt("depth")%>&seq=<%=rs.getInt("seq")%>&redel=<%=rs.getInt("redel")%>">
					댓글 달기</a></td>
		</tr>
	</table>

	<div id=delete style="display: none">
		<form method=post action=delete.jsp>
			<input type=hidden name=ref value=<%=rs.getInt("ref")%>>
			<input type=hidden name=redel value=<%=rs.getInt("redel")%>>
			<!-- rewrite에 ref,depth,seq값 전달하기 content에서 가져오기-->
			<input type=hidden name=depth value=<%=depth%>>
			 <input	type=hidden name=seq value=<%=seq%>> 
				<input type=hidden name=id value=<%=id%>> 
				<input type=hidden name=page value=<%=Page%>> 
				비밀번호 <input type=password name=pwd>
			<input type=submit value=삭제하기> 
			<input type=button onclick=hide() value=취소>
		</form>
	</div>
	<!-- 비밀번호 입력폼을 숨겼다가 위의 삭제를 클릭하면 보이기 -->
	<script>
		function del() // 비밀번호 입력폼을 보이게 하기
		{
			document.getElementById("delete").style.display = "block";
			//document.all.delete.style.display="block";
		}
		function hide() // 비밀번호 입력폼을 숨기기
		{
			document.getElementById("delete").style.display = "none";
			//document.all.delete.style.display="none";
		}
	</script>
	<style>
#delete { /* 나타나는 폼을 여기서 꾸민다 */
	border: 1px solid red;
	position: absolute; /* 내가 원하는 위치 */
	left: 100px;
	top: 100px;
	background: white;
}
</style>

</div>
</div>
</body>

</html>

<%@ include file="../main/bottom.jsp"%>