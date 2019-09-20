<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  <!-- request_check.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
     HttpServletRequest httprequest=(HttpServletRequest)pageContext.getRequest();
  %>
  <%= request==httprequest %>
  
  <% pageContext.getOut().print("출력"); %>
</body>
</html>