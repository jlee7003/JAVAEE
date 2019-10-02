<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="belkman.test.test1" %>
    <%@ page import="belkman.test.ArrayList_Test" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
ArrayList list =ArrayList_Test.output(); //받을려면 똑같은 클래스로 받아야함
out.print(list.get(0));
out.print(list.get(1));
out.print(list.get(2));
//add,get,size

// test1 t1=new test1();

// out.print(t1.hap());

// out.print(test1.hap2());
%>
<title>Insert title here</title>
</head>
<body>
<!-- 
jsp는 자바리소스에 있는 것을 받는다
 -->
</body>
</html>