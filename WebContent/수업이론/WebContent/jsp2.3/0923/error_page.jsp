<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page errorPage="error_view.jsp" %>
    <!-- 현재 문서에서 예외 발생시에 errorPage에 지정된 문서로 이동 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=11 / 0 %>
</body>
</html>