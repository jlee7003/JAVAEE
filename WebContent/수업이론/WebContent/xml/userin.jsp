<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// application 객체의 num 변수의 값을 1증가
// 1. 현재의 num값을 가져오기
Integer aa=(Integer)application.getAttribute("num"); 
//자바는 자료형이 있다-> object를 integer형으로 바꿈
aa++;
// out.print(aa);
application.setAttribute("num",aa); //세션에서 어플리케이션의 num 값을 aa로 바꾸어줌

out.print(application.getAttribute("num"));

response.sendRedirect("index.jsp");
%>
</body>
</html>