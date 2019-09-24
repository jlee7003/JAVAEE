<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>     <!--  error.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    try
  {
    	
  %>
    name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %>
    
  <%
  }catch (Exception e)
  {
	  out.println("시스템 점검중입니다");
  }
  
  %>    
</body>
</html>