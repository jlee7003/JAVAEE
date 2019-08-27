<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../main/top2.jsp"%>
    <%@page import="java.sql.*" %>   

<%    // DB연결
   String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc); 
   Statement stmt=conn.createStatement();
  // 읽어오고자 하는 레코드의 id값을 받기
   String id=request.getParameter("id");
 
  
  // 쿼리작성 => 하나의 레코드만 읽어오는 쿼리
   String sql="select * from tour where id="+id;
  // select한 결과값을 사용하려고 하면 ResultSet에 가져와야 된다.
   ResultSet rs=stmt.executeQuery(sql);
  // 하나의 레코드만 읽어온다..
   rs.next();
  
  
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
table{
border-radius:5px;
border:1px solid black;
}

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
	height: 1300px;
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
  width:auto;
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
				<li>여행후기</li>
				<li>Q&A</li>
			</ul>
		</div>
		<div id=right>
		
   <table width=600 align=center border=1>
    <tr>
     <td> 작성자 </td>
     <td> <%=rs.getString("name")%> </td>
    </tr>
    <tr>
     <td> 제 목 </td>
     <td> <%=rs.getString("title")%> </td>
    </tr>
    <tr>
     <td> 내용 </td>
     <td> <%=rs.getString("content").replace("\r\n","<br>") %> </td>
    </tr>
    <tr>
     <td> 그림 </td>
     <td> <img src="tour_jpg/<%=rs.getString("fname")%>" width=400> </td>    
    </tr>
    <tr>
     <td> 작성일 </td>
     <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <tr>
    <td>
    <a href="tourlist.jsp">목록</a>
    <a href="tour_update.jsp?id=<%=id%>">수정</a>
    <a href="tour_delete.jsp?id=<%=id%>">삭제</a>
    </td>
    </tr>
       </table>
       </div>
       </div>
</body>
</html>
<%@ include file="../main/bottom.jsp"%>
