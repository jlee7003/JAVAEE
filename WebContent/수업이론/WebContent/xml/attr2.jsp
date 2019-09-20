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
//  request.setAttribute("name","홍길동"); //request는  그 문서 안에서만 만들고 사용 할 수 있음
out.print(request.getAttribute("name")+"<p>");
out.print(session.getAttribute("name")+"<p>");
out.print(application.getAttribute("name")+"<p>");
 %>
</body>
</html>