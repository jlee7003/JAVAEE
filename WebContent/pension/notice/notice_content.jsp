<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.



 //입력 양식의 값 가져오기
 request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");

String sql="select * from gongji where id="+id; //값을 데이터베이스와 연결 시켜야함
ResultSet rs;// 데이터 수령 객체

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

</style>
<body>
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
      <%=rs.getString("content") %>
     </td>
     </tr>
     <tr>
     <td colspan=2>
     삭제
    수정
     </td>
     </tr>
   </table>

 


</body>
</html>