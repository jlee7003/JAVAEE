<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %><!-- 이건 뭘까? -->
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");//request되는 값의 한글 코드 처리


String title=request.getParameter("title");
String content=request.getParameter("content");
String name=request.getParameter("name");
String age=request.getParameter("age");
String sung=request.getParameter("sung");
String pwd=request.getParameter("pwd");
Date today = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//표현할 날짜 형식의 객체를 생성
String writeday = sdf.format(today);//today 날짜를 넣어주면 2019-05-05
String sql="insert into board(title,content,name,age,sung,pwd,writeday) value('"+title+"','"+content+"','"+name+"',"+age+","+sung+",'"+pwd+"','"+writeday+"')";

stmt.executeUpdate(sql);

response.sendRedirect("list.jsp");
stmt.close();
conn.close();
%>
    <% 
    //write_ok.jsp-> 폼의 입력값을 DB에 저장해주는 역할
    
    //DB연결 -> connection(연결) , statement(쿼리실핼)
    
    //입력된 값을 write jsp에서 가져오기 -> request.getParameter()
    //계산을 하지 않는 다면 String에 넣어도 된다
    //계산이 있을 경우 숫자로 변형후에 사용해야 한다.
    
    //실행할 쿼리를 생성
    
    //쿼리를 실행
    
    //connection, statement 객체의 해제
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<!-- 
웹에서 다른 문서로 이동하는 법
1.자바스크립트 -> location => 사용자의 이벤트 후에 자바스크립트 함수에서 이동
2.<a>태그를 이용하여 -> 현제 문서의 텍스트, 이미지등을 클릭에 의해 이동
3.<form> 태그도 가능 -> 전달할 값들을 가지고 간다.
4.<meta...> ->이동시간을 제어한다.
5.response.sendRedirect()를 통해-> 서버쪽 코드에서 실행 
-->