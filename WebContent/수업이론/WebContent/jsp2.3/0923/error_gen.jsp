<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- error_gen.jsp -->
<html><!-- 0으로 나누는 에러 발생시 web.xml에 등록한 error_arith.jsp로 이동 -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%=11/0 %>
</body>
</html>