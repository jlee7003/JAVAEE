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
String id=request.getParameter("id"); //현재 보고있는 공지사항의 아이디

ResultSet rs;// 데이터 수령 객체
String sql="select * from gongji where id="+id; //값을 데이터베이스와 연결 시켜야함

rs=stmt.executeQuery(sql);  //데이터베이스를 rs객체에 넣어준것

rs.next();//가져오는 레코드는 값이 하나이기 때문에 rs.next()를 하나만 넣어준것

 

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
				<li>로고<%=id%></li>
				<li><a href=../notice/noticelist.jsp>공지사항</a></li>
				<li><a href=../gesipan/gesipan.jsp>계시판</a></li>
				<li>여행후기</li>
				<li>Q&A</li>
			</ul>
		</div>


	<div id=right>
	
     <table width=500 border=1>
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title") %> </td>
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
       <td colspan=2 id=idid> 내용 </td>
     </tr>
     <tr>
     <td colspan=2 id=content>
      <%=rs.getString("content").replace("\r\n","<br>")%>
     </td>
     </tr>
     <tr>
     <td colspan=3> 수정 삭제   </td>
     </tr>
  <tr>
  <td>
  <a href="notice_contentlist.jsp">목록가기</a>
  </td>
  </tr>
   </table>
   <table width=500 align=center>
   
        <tr>
     <td colspan=3> 수정:이름클릭 삭제:날짜 클릭   </td>
     </tr>
      <%
      //g_id= 공지글의 아이디 값을 받아서 가져온것
      sql="select * from gong_dat where g_id="+id+" order by id desc";
      rs=stmt.executeQuery(sql);
   while(rs.next())
   {
	   String n=rs.getString("name");
	   String c=rs.getString("content");
	   String d=rs.getString("id");
	   
   %><!-- 값을 매개변수로 넣어줌 -->
       <tr>
       <td id=datname size=6>
       <a href="javascript:upd('<%=n%>','<%=c%>','<%=d%>')"> <%= rs.getString("name") %> </a>
       </td>
       <td id=datcontent><%= rs.getString("content")%> </td>
       <td><a href="javascript:del(<%=d%>)"><%= rs.getString("writeday")%></a> </td>
  </tr>
   <%
   }
   //dat input id=gongji id
   //수정은 id= gong_dat id 
   
   %>
 <script>
 var xml=new XMLHttpRequest();
 var xml2=new XMLHttpRequest();//stmt선언 같이 선언하는 것
/* //  XMLHttpRequest는 HTTP request을 보내는 것을 매우 쉽게 만들어 준다.
당신은 간단하게 객체의 인스턴스를 생성하고, URL을 열고, request 를 보내기만 하면 된다.
처리 과정이 끝났을 때 request 객체에서 결과의 컨텐츠 뿐만 아니라 결과의 HTTP 상황도 이용할 수 있다.
이 페이지에서는 이 강력한 자바스크립트 객체에 대해 자주 사용하는 몇 가지와 잘 알려지지 않은 유스 케이스들을  다루도록 하겠다. */

//이동하지 않고 갔다가오기 그 객체를 쓰기 위해서 변수를 만든다 그것이  var xml=new XMLHttpRequest();
// xml.open("전송방식 post","전송 주소 test.jsp");//전송방식과 호출할 문서,매개값 test jsp에 값을 전달 및  실행 시키고 
// xml.send();//실제 전송단계 

//alert();
 function del(id)
 {
	 xml.open("get","dat_delete.jsp?id="+id);
	 xml.send(); //값을 보내는 것
 }
 xml.onreadystatechange=function()
 {
	 
 if(xml.readyState==4)//수신 완료 되면
 {
	if(xml.responseText.trim()=="ok") 
		location.reload();//f5랑 똑같음
 }
 
 }

 
 function upd(id,name,content)
 {
	 
	 document.pkc.g_id.value=content;
	 document.pkc.name.value=id;
	 document.pkc.content.value=name;
	 document.pkc.sub.value="수정";
	 document.pkc.sub.type="button";
	 
	 tt=document.getElementById("btn");
	 tt.addEventListener("click",upd_send);
}
 function upd_send()
 {   
	 g_id=encodeURIComponent(document.pkc.g_id.value);
	 name=encodeURIComponent(document.pkc.name.value);
	 content=encodeURIComponent(document.pkc.content.value);
	 url="dat_updateok.jsp?g_id="+g_id+"&name="+name+"&content="+content;
	 xml2.open("get",url);
	 xml2.send();
	 
 }
 xml2.onreadystatechange=function()
 {
	 
 if(xml2.readyState==4)//수신 완료 되면
 {
  
	if(xml2.responseText.trim()=="ok") 
	{
	    location.reload();	
	}
 }
 
 }
 
  </script>
   <tr>
   <td><!-- 댓글 달기 입력폼 -->
   <form name=pkc method=post action=dat_inputok.jsp> 

   <input type=hidden name=g_id value=<%=id%>>
   
   <input type=text name=name placeholder="이름">
   </td>
   <td>
   <textarea cols=30 rows=2 name=content></textarea>
   </td>
   <td>
   <input type=submit name=sub value=댓글 id=btn>
   <input type=reset name=can value=취소>
   </td>
   </form>
   </td>
   </tr>
   </table>
   </div>
 

</div>
</body>

<%@ include file="../main/bottom.jsp"%>
</html>