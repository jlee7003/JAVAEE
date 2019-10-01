<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
      Calendar cal=Calendar.getInstance(); // cal객체생성
  %>
  
  <%=cal.get(Calendar.YEAR)%>
  <%=cal.get(Calendar.MONTH)+1%>
  <%=cal.get(Calendar.DATE)%>
  
  <%
   java.util.Calendar cal2=java.util.Calendar.getInstance(); // cal객체생성
  %>
  
  <%=cal2.get(java.util.Calendar.YEAR)%>
  <%=cal2.get(java.util.Calendar.MONTH)+1%>
  <%=cal2.get(java.util.Calendar.DATE)%>
</body>
</html>
















