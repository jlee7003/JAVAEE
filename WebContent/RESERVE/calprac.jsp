<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  LocalDate today=LocalDate.of(2019,7,1);
  int day=today.getDayOfWeek().getValue();
  if(day==7)//요일이 일요일이라면 7이 아니라 0으로 변경
    day=0;
  boolean leap=today.isLeapYear();//윤년인지 아닌지 true false 값으로 표시함
  double alldays=today.lengthOfMonth(); //이번 달의 길이를 말함
  int week=(int)Math.ceil((alldays+day)/7);
  int max_day=(int)alldays;
%>
<table width=500 align=center border=1>
 <tr>
 <td>일</td>
 <td>월</td>
 <td>화</td>
 <td>수</td>
 <td>목</td>
 <td>금</td>
 <td>토</td>
 </tr>
 <%
 int dd=1;
 String col="";
 for(int i=1;i<=week;i++)
 {
 %>


<%
}
%>
</table>





</body>
</html>