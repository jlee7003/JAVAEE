<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="calendar.jsp">
 
<select name="year">
<%
    Calendar cal = Calendar.getInstance();
 
    int year = cal.get(Calendar.YEAR);
    int month = cal.get(Calendar.MONTH) + 1;
    
    for(int i = year - 5; i < year + 5; i++) { 
        
        if(i == year) {
            out.println("<option selected=\"selected\">" + i + "</option>");
        } else {
            out.println("<option>" + i + "</option>");
        }
    }
    
%>
</select>년
 
<select name="month">
<%
    for(int i = 1; i <= 12; i++) {
        
        if(i == month) {
            out.println("<option selected=\"selected\">" + i + "</option>");
        } else {
            out.println("<option>" + i + "</option>");
        }
    }
    
%>
</select>
 
<input type="submit" value="달력보기" />
 
 
</form>
</body>
</html>

