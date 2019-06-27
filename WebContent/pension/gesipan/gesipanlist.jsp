<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>

<%@ include file="../main/top2.jsp"%>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.




 //입력 양식의 값 가져오기
 request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");

ResultSet rs;// 데이터 수령 객체
String sql="select * from gesipan where id="+id; //값을 데이터베이스와 연결 시켜야함

rs=stmt.executeQuery(sql);  //데이터베이스를 rs객체에 넣어준것

rs.next();//가져오는 레코드는 값이 하나이기 때문에 rs.next()를 하나만 넣어준것
//레코드로 이동해야 하기 때문에

 

%>

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
		
		 <table width=500 border=1>
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title") %> </td>
     </tr>
     <tr>
       <td> 작성자 </td>
       <td> <%=rs.getString("name") %> </td>
     </tr>
     <tr>
       <td> 작성날짜 </td>
       <td> <%=rs.getString("writeday") %> </td>
     </tr>
     <tr>
       <td> 조회수 </td>
       <td> <%=rs.getString("rnum") %> </td>
     </tr>
     <tr>
       <td width=70> 기타 정보 </td>
        <%
            String blo="";
            switch(rs.getInt("blood")) // 1~4까지의 값
            {
               case 1: blo="A형"; break;
               case 2: blo="B형"; break;
               case 3: blo="O형"; break;
               case 4: blo="AB형"; break;
            }
        %>
        
                   <%
            String[] hobb=rs.getString("hobby").split(",");       
            String hobby="";
            for(int i=0; i<hobb.length; i++)
            {
            switch(hobb[i]) // 1~4까지의 값
            {
               case "1": hobby=hobby+"낚시 "; break;
               case "2": hobby=hobby+"독서 "; break;
               case "3": hobby=hobby+"게임 "; break;
               case "4": hobby=hobby+"자전거 "; break;
               case "5": hobby=hobby+"영화 "; break;
               case "6": hobby=hobby+"운동 "; break;
            }
            }
        %>
 
        <td> <%=blo%>   <%=hobby%>  
        <%int age=Integer.parseInt(rs.getString("birth")); 
          age=2019-age+1;
        %>
        
        <%=age%>세
        </td>
    
      
   </tr>
     <tr>
       <td colspan=2 id=idid> 내용 </td>
     </tr>
     <tr>
     <td colspan=2 id=content>
      <%=rs.getString("content").replace("\r\n","<br>") %>
     </td>
     </tr>
     <tr>
     <td colspan=2>
     삭제
    수정
   <a href="gesipan.jsp">목록</a>
     </td>
     </tr>
   </table>
		
		</div>

	</div>
</body>
</html>

<%@ include file="../main/bottom.jsp"%>
