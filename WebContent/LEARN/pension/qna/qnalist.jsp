<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../main/top2.jsp"%>
<%@page import="java.sql.*"%>
<%
	// DB연결
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	int start;
	int Page;
	if (request.getParameter("page") == null) {
		start = 0;
		Page = 1;
	} else {
		Page = Integer.parseInt(request.getParameter("page"));
		start = (Page - 1) * 10;
	}

	String sql = "select * from qna order by ref desc, seq asc limit " + start + ",10";

	ResultSet rs = stmt.executeQuery(sql);
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

#section{
	width: 1200px;
	height: 1000px;
	display: flex;
	margin-left:200px;
	align-items: center;
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
<style>
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: green;
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
	<table align=center width=800 border=1 cellspacing=0>
		<caption>
			<h2>
				계시판
				<%=Page%></h2>
		</caption>
		<tr height=30 align=center>
			<td>이름</td>
			<td>제목</td>
			<td>조회수</td>
			<td>작성일</td>
			<td>ref</td>
			<td>depth</td>
			<td>seq</td>
			<td>redel</td>
		</tr>
		<%
		while(rs.next())
		{
			%>
			<tr height=20>
			<td align=center><%=rs.getString("name")%></td>
			<td>
			<%
			for(int i=1;i<rs.getInt("depth");i++){
				%>
				   	&nbsp;&nbsp;&nbsp;
				<% 
			}
			%>			
			
			<%
			if(rs.getInt("depth")!=1)
			{
				%>
				 ↳ 
				 <%
    	 }
    	 %>
     <a href="content.jsp?id=<%=rs.getString("id")%>&Page=<%=Page%>"> <%=rs.getString("title")%> </a> </td>
     <td align=center><%=rs.getString("rnum")%></td>
     <td align=center><%=rs.getString("writeday") %></td>
     <td align=center><%=rs.getString("ref") %></td>
     <td align=center><%=rs.getString("depth") %></td>
     <td align=center><%=rs.getString("seq") %></td>
     <td align=center><%=rs.getString("redel") %></td>
  <%
    }
  %>
  <tr>
  <td colspan=8 align=right> <a href="write.jsp">글쓰기</a></td>
  </tr>
  <tr>
  <td colspan=8 align=center style="word-spacing:10px">
  <%
  int pstart;
  int pend;
  
  sql="select count(id) as cnt from qna";
  rs=stmt.executeQuery(sql);
  rs.next();
  int total_record=rs.getInt("cnt");
  int page_cnt=total_record/10;
  if(total_record%10 !=0)
	  	page_cnt=page_cnt+1;
  pstart=(int)Page/10;
  if(Page%10 ==0)
	  pstart = pstart-1;
  pstart=Integer.parseInt(pstart+"1");
  pend=pstart+9; // 마지막 구역에서는 pstart부터 마지막페이지까지만 출력
  
  if(pend > page_cnt) // 출력될페이지값이 전체페이지값보다 크다면
     pend=page_cnt;  // 출력페이지의 끝값을 전체페이지값으로 변경
%>
<!-- 첫페이지는 => 1page -->
<a href="list.jsp?page=1"> 처음 </a>

<!-- 페이지 출력되는 첫구역에서는 링크를 해제 -->
<!-- 첫구역일때를 알수 있는 값 => pstart=1  -->
<%
if(pstart == 1)
{
%>
◀◀
<%
}
else
{
%>
 <a href="list.jsp?page=<%=pstart-1%>"> ◀◀ </a>
<%
}
%>
<!-- 현재페이지에서  -1된 페이지  이동 -->
<!-- 현재페이지가 1페이지라면 비활성화 -->
<%
 if(Page != 1) // 1페이지가 아니라면
 {
%>
 <a href="list.jsp?page=<%=(Page-1)%>"> ◀ </a>
<% 
 }
 else
 {
%>
◀
<%  	
 }

// 1번문제 : 현재페이지의 숫자를 빨간색으로
  String color="";
  for(int i=pstart;i<=pend;i++)
  {
 	 if(Page == i) // 현재페이지랑 출력되는 i값이 같을때
 		 color="style='color:red'";
 	 else
 		 color="";
%>
    <a href="list.jsp?page=<%=i%>" <%=color%>> <%=i%> </a>
<%
  }
  

%> <!-- 현재페이지에서  +1된 페이지  이동 -->
  <!-- 현재페이지가 마지막 페이지라면 비활성화 -->
<%
  if(Page != page_cnt)
  {
%>
  <a href="list.jsp?page=<%=Page+1%>"> ▶ </a>
<%
  }
  else // 마지막 페이지
  {
%>    
  ▶
<%
  }
%>
 <!-- 페이지출력 마지막 구역일때는 링크가 해제 -->
 <!-- pend값하고 page_cnt값이 같으면 마지막 구역 -->
 <%
   if(pend == page_cnt)
   {
 %>
 ▶▶
 <%
   }
   else
   {
 %>
 <a href="list.jsp?page=<%=pend+1%>"> ▶▶ </a>
 <%
   }
 %>
  <!-- 끝 페이지 => page_cnt -->
  <a href="list.jsp?page=<%=page_cnt%>"> 끝 </a>
  
  <!-- 2번문제 : select태그를 이용하여 page이동 -->
  <!-- 전체페이지만큼 option태그를 추가 -->
  <select id=pp onchange=move_list(this.value)>
  <%
   for(int i=1;i<=page_cnt;i++)
   {
  %>
   <option value=<%=i%>> <%=i%>page </option>
  <%
   }
  %> 
  </select>
  </td>
</tr>
</table>
<script>
 function move_list(val) // val=this.value; (this==select)
 {
 	location="list.jsp?page="+val;
 }
 function select_init()
 {  // select태그의 option태그를 현재 페이지에 맞게 나타내기
    //document.getElementById("pp").selectedIndex=<%=Page-1%>;
    document.getElementById("pp").value=<%=Page%>;
 }
 select_init();
 </script>

  <%
%> 
</div>
</div>
</body>
</html>
<%
  rs.close();
  stmt.close();
  conn.close();
%>
