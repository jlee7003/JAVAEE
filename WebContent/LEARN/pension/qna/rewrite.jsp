<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ include file="../main/top2.jsp"%>
      <%
    String ref=request.getParameter("ref");
    String depth=request.getParameter("depth");
    String seq=request.getParameter("seq");
    String redel=request.getParameter("redel");
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
	justify-content: center; height : 60px;
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
<h3>답글 달기</h3>
<form method=post action= rewrite_ok.jsp>
<input type=hidden name=ref value=<%=ref%>> <!-- rewrite에 ref,depth,seq값 전달하기 content에서 가져오기-->
<input type=hidden name=depth value=<%=depth%>>
<input type=hidden name=seq value=<%=seq%>>
<input type=hidden name=redel value=<%=redel%>>
제목<input type=text name=title size=50><p>
내용 <textarea cols=50 rows=6	name=content></textarea><p>
작성자 <input type=text name=name size=8><p>
<%=redel%>
연령<select name= age>
	<option value=0>10대</option>
	<option value=1>20대</option>
	<option value=2>30대</option>
	<option value=3>40대</option>
	<option value=4>50대</option>
</select><p>
성별<input type=radio name=sung value=0>남자
   <input type=radio name=sung value=1>여자<p>
 비밀번호<input type=password name=pwd><p>
 		
        <input type=submit value=글저장>
</form>
</div>
</div>
</body>
</html>
<%@ include file="../main/bottom.jsp"%>