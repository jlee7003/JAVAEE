<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calender</title>
<style>
table,td{
border: 1px solid black;
text-align:center;
}
tr:nth-child(1){
text-align:center;
color:orange;

}

</style>
<script>
</script>
</head>
<body>
<!-- 데이블로 달력 만들기 -->
<%
  LocalDate today=LocalDate.of(2019,7,1);  //LocalDate.of(2019,9,1);//LocalDate.now(); 현재날짜
  int yoil=today.getDayOfWeek().getValue();// 요일의 값 1~7(일요일이 7),getValue->int 값으로 변환
  if(yoil==7) //요일이 일요일이라면 7이 아니라 0으로 변경 월1 화2 수3 목4 금5 토6 일7
	  yoil=0;
  //709. 특정 달의 시작 요일을 알아야함 
 // out.print(yoil+"<br>");//그 일의 요일 표시
  boolean leap=today.isLeapYear();//윤년인지 아닌지(2/29)
 // out.print(leap+"<br>");
  double chong=today.lengthOfMonth();//기준으로 삼은 달의 일수가 며칠인지
  //out.print(chong+"<br>");
  
  //몇주인지  계산
 int ju=(int)Math.ceil((chong+yoil)/7);//정수와 정수형을 더하면 소수점이 사라짐, 올림
 //out.print(ju+"<br>");
  
  //총일수를 정수형으로
 int max_day=(int)chong;
 //max_day(총일수)
 
%>
<table width=500 border=1 align=center>
<tr height=40>
<td>일</td>
<td>월</td>
<td>화</td>
<td>수</td>
<td>목</td>
<td>금</td>
<td>토</td>
<tr>

<%
//1~max_day값을 출력
int dd=1;
String col="";
for(int i=1;i<=ju;i++) //주의 수
{
%>
	<tr height=50>
	<%
	for(int j=1;j<=7;j++)
	{
		if(dd > max_day || (j <= yoil)&&(i==1))//총일수가 31일 보다 작거나 같다면 출력 아니라면 공백
		{ // 출력값 > 총일수,(i==1)-> 첫번째 주
			//yoil 보다 작거나 같다면 빈칸 출력
			//if(조건) => 참,거짓 or== 모두 and는 둘중 하나만
	%>
	<td>&nbsp;</td>
	
	<%
		}
		else//아니라면 32부터 공백
		{
			switch(j)//스위치로 분할해서 스타일 주는 법
			{
			case 1: col="red"; break;
			case 7: col="blue"; break;
			default: col="black";
			}
			
	%>
	<td> 
	
	
	<span style='color:<%=col%>'> <%=dd%></span>
	
	</td>
	<%
	dd=dd+1;//출력하고 증가하면 안되기에 안에다가 dd증가식을 넣어줌
	}
	
	}
	%>
	</tr>
<%
}
%>

</table>
</body>
</html>