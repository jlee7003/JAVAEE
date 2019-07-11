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

<%
    int year = 2016;
    int month = 8;
    
    try{
        year = Integer.parseInt(request.getParameter("year"));
        month = Integer.parseInt(request.getParameter("month"));
    }catch(Exception e){}
    
    Calendar cal = Calendar.getInstance();
    cal.set(year, month - 1, 1);
    
    int week = cal.get(Calendar.DAY_OF_WEEK);    //1일의 요일
    int endDay = cal.getActualMaximum(Calendar.DATE);    // 그 달의 마지막 날
    
%>
    <table border="1">
 
        <caption><%=year %>년 <%=month %>월</caption> <!-- expression -->
 
        <tr align="center">
            <th><font color="red">일</font></th>
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
            <th>토</th>
        </tr>
        <tr>
        <%
    // 1일까지 요일 skip
    for(int i=1; i < week; i++) {
        out.print("<td></td>");
    }
    
    // 날짜 출력
    for(int d=1,w=week; d <=endDay; d++,w++) {
       out.print("<td>" + d +"</td>");
        if (w % 7 == 0) out.println("</tr><tr>");
    }
 
%>
    </tr>
    </table><br/>
    <a href ="calform.jsp">년월선택</a>
</body>
</html>




