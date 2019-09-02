<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function imsi()
{
	// 달력을 만들기 위해 필요한 값 -> 월의 총일 수, 1일의 요일-getday()
	// var today = new Date(2019,8,1);//-> 현재 년월일 시분초 나옴
var yyy=document.all.year.value;
var mmm=document.all.month.value;
	var today = new Date(yyy, mmm, 30);//2019-09-01
	// alert("년도 : "+today.getFullYear()); //4자리 년도
	// alert("월 : "+today.getMonth()); //월 -> 0~11까지의 값 0부터 시작함으로 8이면 9월이다 실제로는
	// alert("일 : "+today.getDate()); //일
	// alert("요일 : "+today.getDay()); //요일 => 0~6 (일:0)

	//총 일수
	var mon = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
	var mon1=document.all.month.value;
	var aday = new Date(2019, 7, 1);
	var yoil = aday.getDay();
	alert("1일의 요일 :" + yoil)
	var yy = aday.getFullYear();
	if ((yy % 4 == 0 && yy % 100 != 0) || yy % 400 == 0) //년도 % 4 => 0 && 년도%100 =>인것은 제외 ,년도 %400 => 0 
	{
		var chong = mon[1] + 1;
	}
	else
		var chong = mon[1];//배열에 구할 월의 달력을 넣어주면 된다.

	alert("총일 : " + chong)
}
</script>
<body>
년도
<select name=year onchange=imsi()>
<% 
for(int i=1950;i<2030;i++)
{
%>
<option value=<%=i%>><%=i%></option>
<%
	}
%>


</select>

월
<select name=month  onchange=imsi()>
<option value=31>1</option>
<option value=28>2</option>
<option value=31>3</option>
<option value=30>4</option>
<option value=31>5</option>
<option value=30>6</option>
<option value=31>7</option>
<option value=31>8</option>
<option value=30>9</option>
<option value=31>10</option>
<option value=30>11</option>
<option value=31>12</option>
</select>
</body>
</html>