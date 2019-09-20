<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  <!-- request_check.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>//서블릿?
<body>
  <%
     HttpServletRequest httprequest=(HttpServletRequest)pageContext.getRequest();
  															//현재 페이지에서 request 하는 것과 같은것
  %>
  <%= request==httprequest %>
  
  <% pageContext.getOut().print("출력"); %>
</body>
</html>