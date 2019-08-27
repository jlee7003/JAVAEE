<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ include file="../main/top2.jsp"%>
<%@page import="java.sql.*" %>    
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  // 수정하고자 하는 레코드의 id값 가져오기
  String id=request.getParameter("id");
  // 쿼리 작성
  String sql="select * from tour where id="+id;
  // ResultSet에 가져오기
  ResultSet rs=stmt.executeQuery(sql);
  rs.next(); // 무조건!!!!!
  out.print(sql);
%>  
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
   <h2>수정하기</h2>
   <form method=post action=tour_updateok.jsp enctype=multipart/form-data>
   <input type=hidden name=id value=<%=id%>>
   작성자: <input type=text name=name value="<%=rs.getString("name")%>"> <p>
   제목: <input type=text name=title  value="<%=rs.getString("title")%>" size=50><p>
   내용 : <textarea cols=50 rows=4 name=content ><%=rs.getString("content")%></textarea> <p>
 그림: <input type=file name=fname value="<%=rs.getString("fname")%>"><p>
  <input type=submit value=올리기>
  </form>
  </div>
  </div>
</body>
</html>
<%@ include file="../main/bottom.jsp"%>