<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
    function imsi()
    {
    	name="배트맨";
    	name=encodeURIComponent(name);
        location="second.jsp?name="+name;   	
    }
 </script>
</head>
<body>
   <%
      String name="홍길동";
      name=URLEncoder.encode(name);
   %>
   <a href="second.jsp?name=<%=name%>"> java에서 인코딩 </a> <p>
   
   <button onclick=imsi()> javascript에서 인코딩 </button>
   
</body>
</html>








