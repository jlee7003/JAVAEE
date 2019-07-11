<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calender</title>
<style>
table, td {
	border: 1px solid black;
	text-align: center;
	border-spacing: 0px;
	}
table{
border-radius:5px;
}

tr:nth-child(1) {
	text-align: center;
	color: orange;
}
caption{

padding:30px;


text-align:center;
}
</style>
<script>
	
</script>
</head>
<body>
	<!-- 데이블로 달력 만들기 -->
	<%
	/*숫자를 문자로 변형
	
	int a=100;
	
	1) a+"";
	2)String b=new String(a);
	
	문자를 숫자로
	integer.parseInt(a);
*/
	 	String y=request.getParameter("yy");
		String m=request.getParameter("mm");
		if(y==null)
		{
		LocalDate xday=LocalDate.now(); // 현제시간
		y=xday.getYear()+"";
		m=xday.getMonthValue()+"";
		}
		int y1=Integer.parseInt(y);
		int m1=Integer.parseInt(m);
		LocalDate today = LocalDate.of(y1, m1, 1); //LocalDate.of(y,m,1);//LocalDate.now(); 현재날짜(날짜관련 가장 최신 클래스)
		//요일을 알기 위해서는 1일이 필요함 , localDate.now 를 사용하돼 일 수는 of로 가지고 옴
		int yoil = today.getDayOfWeek().getValue();// 요일의 값 1~7(일요일이 7),getValue->int 값으로 변환//1일의 요일 가져오기
		if (yoil == 7) //요일이 일요일이라면 7이 아니라 0으로 변경 월1 화2 수3 목4 금5 토6 일7
			yoil = 0;
		//709. 특정 달의 시작 요일을 알아야함 
		boolean leap = today.isLeapYear();//윤년인지 아닌지(2/29)
		double chong = today.lengthOfMonth();//기준으로 삼은 달의 일수가 며칠인지

		int ju = (int) Math.ceil((chong + yoil) / 7);//정수와 정수형을 더하면 소수점이 사라짐, 올림
		//올림(X.xxxxx)-> x정수보다 1큰 정수
		int max_day = (int) chong;
		int a = 100;
		double b = 7; //소숫점 가져오기
		
	%>
	
	<table width=500 border=1 align=center>
	
<caption>
<%
if(m1!=1)
{
%>
	 <a href="CalendarLOGIC2.jsp?yy=<%=y1%>&mm=<%=m1-1%>">이전달</a>
	 <%
}
	 else
	 {
	 %>
	 <a href="CalendarLOGIC2.jsp?yy=<%=y1-1%>&mm=<%=12%>">이전달</a>
	 <%
	 }
	 %>
	  <%=y%>년 <%=m%>월 
	  <%
	  if(m1!=12)
	  {
	  %>
     <a href="CalendarLOGIC2.jsp?yy=<%=y1%>&mm=<%=m1+1%>">다음달</a>
     	 <%
}
	 else
	 {
	 %>
     <a href="CalendarLOGIC2.jsp?yy=<%=y1+1%>&mm=<%=1%>">다음달</a>
      <%
	 }
	 %>
     </caption>
 
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
		 String col="";
			int day = 1;
			for (int i = 1; i <= 5; i++) {
		%>
		<tr>
			<!-- 1주 -->
			<%
				for (int j = 0; j < 7; j++) {
						if (j < yoil && i == 1 || max_day < day) {//day > chong) chong은 더블 값이므로
			%>

			<td>&nbsp;</td>
			<!-- 빈칸을 출력하는 부분 -->
			<%
				} else //날짜를 출력했을 때만 1을 더한다.
						{	switch(j)//스위치로 분할해서 스타일 주는 법
					{
					case 0: col="red"; break;
					case 6: col="blue"; break;
					default: col="black";
					}
					
			%>

			<td><span style='color:<%=col%>'><%=day%></span></td>

			<%
				day = day + 1;
						}

					}
			%>
		</tr>

		<%
			}
		%>



		<tr>
			<!-- 2주 -->

		</tr>
		<tr>
			<!-- 3주 -->

		</tr>
		<tr>
			<!-- 4주 -->

		</tr>
		<!-- 5주 -->



	</table>
</body>
</html>