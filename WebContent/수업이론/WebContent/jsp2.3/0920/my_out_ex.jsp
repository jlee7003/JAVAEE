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
    int a=100;
    if(a<60)
    {
%>    	
     <%="불합격"%>	 <!--  불합격 -->
<%
    }
    else
    {
%>   	
     <%="합격" %>       /* 합격 */
<%
    }
%>
<hr>
 <%
   if(a<60)
	   out.print("불합격");
   else
	   out.print("합격");
 %>	   
</body>
</html>