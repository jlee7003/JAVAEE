<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
   String name="홍길동"; 
   String age="33";
   String title="안녕하세요!! 첫번째 입니다";
   String writeday="2019-08-07";
%>
<body>
  <%
    out.println("<table border=1><tr><td>"+name+"</td>");
    out.println("<td>"+age+"</td>");
    out.println("<td>"+title+"</td>");
    out.println("<td>"+writeday+"</td></tr></table>");
  %>
  <hr>
  
  <table border=1 width=600 height=100>
   <tr>
     <td align=center> <%=name%> </td>
     <td> <%=age%> </td>
     <td> <%=title%> </td>
     <td> <%=writeday%> </td>
   </tr>
  </table>
  
</body>
</html>















