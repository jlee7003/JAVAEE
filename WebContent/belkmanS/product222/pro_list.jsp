<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css">
<script src="../etc/main.js"></script>
</head>
<body>
  <jsp:include page="../nav.jsp" flush="false" />
  <div id=right>
    <section class=list_section>
<!-- pro_list.jsp 시작 -->
<%@ page import="java.sql.*" %> 
<%@ page import="belkman.Jdbc.Connect" %> 
<%@ page import="java.text.DecimalFormat" %><!--  숫자에 콤마 -->
<%@ page import="belkman.Command.Pro_list" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="belkman.Dto.Product" %>
<%

%>
 <table width=800 cellspacing=30 border=0>
  <tr>
<%  // pro_list.jsp
 String pcode=request.getParameter("pcode");
 Pro_list plist=new Pro_list();
 ArrayList<Product> list=plist.pro_list(pcode); //레코드의 값을 리턴
 
 for(int i=1;i<=list.size();i++)
 {
%>
  <td> 
    <p align=center>
     <img width=90 height=250 src="img/<%=list.get(i-1).getPlist()%>">
    </p>
    <p align=center><%=list.get(i-1).getPname()%> </p>
    <p align=right>￦<%=list.get(i-1).getPrice()%> </p>
  </td> 
<% 
  if(i%4 == 0) 
   { 
%>
 </tr>
 <tr>
<%	 
   }  // if의 끝
 }  // for의 끝
%>
 </tr>
</table>
<!-- pro_list.jsp 끝  -->     
    </section>
    <jsp:include page="../footer.jsp" flush="false" />
  </div>  
</body>
</html>
























