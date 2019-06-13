<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //쿼리문 시작 시키는 객체

//가져올 레코드의 id 값 받기
String id=request.getParameter("id");

//수정하고자 하는 레코드의 값을 읽어오는 쿼리 생성 -> resultset에 저장
String sql="select * from guest where id="+id;


//쿼리를 실행하여 해당 레코드를 resultset에 가져오기
ResultSet rs=stmt.executeQuery(sql);
//변화가 없는 것-> query 변화가 있는 것 -> update

rs.next();//첫 레코드로 접근


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
table td {
  background: skyblue;
  border: 3px solid pink;
  font-size:15px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:10px;
  border-radius: 5px;
}
table {
padding-top:200px;
border: 0px solid black;
margin: auto;

}
body{
background-color: black;
color:white;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}

</style>
<body>
<form method=post action="update_ok.jsp">
 <input type=hidden name=id value="<%=id%>">
이름 : <%=rs.getString("name") %><p>
제목<input type=text name=title  size=40 value="<%=rs.getString("title") %>"><p>
내용<textarea cols=40 rows=5 name=content> <%=rs.getString("content") %> </textarea><p>
  <input type=submit value=전송>
  
  <!-- input type에 접근 못하게 하는 법
       disabled 라고 태그에 적어준다.
       
       readonly,onkeydown="return imsi()"  
  
   -->



</form>
</body>
</html>