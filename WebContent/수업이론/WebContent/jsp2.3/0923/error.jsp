<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <% try
   {
	   
   
   %>
   <!-- toUpperCase 대문자로 변환 -->
<%-- name 파라미터 값 : <%=request.getParameter("name").toUpperCase() %> --%>
name 파라미터값 : <%=request.getParameter("name")%>
<%
}
   catch(Exception e)
{
	out.println("시스템 점검중");
}
%>
</body>
</html>