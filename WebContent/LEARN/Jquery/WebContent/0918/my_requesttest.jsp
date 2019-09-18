<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- /* request객체 */ -->
<% request.setCharacterEncoding("utf-8");%>
클라이언트의 Ip정보 :<%= request.getRemoteAddr()%> <p>
인코딩정보 :<%=request.getCharacterEncoding()%> <p>
프로토콜 :<%=request.getProtocol()%> <p>
전송방식 :<%=request.getMethod()%> <p>
요청URI :<%=request.getRequestURI()%> <p>
서버이름 :<%=request.getServerName()%><p>
서버 포트 :<%=request.getServerPort() %>
</body>
</html>