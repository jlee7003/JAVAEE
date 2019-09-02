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
var mmm=parseInt(document.all.month.value);
//자바에서는 =>Integer.parseInt(document.all.month.value);
//자바스크립트에서는=>parseInt(document.all.month.value);
	var aday = new Date(yyy, mmm, 1);//2019-09-01
	// alert("년도 : "+today.getFullYear()); //4자리 년도
	// alert("월 : "+today.getMonth()); //월 -> 0~11까지의 값 0부터 시작함으로 8이면 9월이다 실제로는
	// alert("일 : "+today.getDate()); //일
	// alert("요일 : "+today.getDay()); //요일 => 0~6 (일:0)
 
	
 	//문자는 따움표를 안해주면 정소로 인식하기에 무조건 따옴표를 해줄것	
	
	//총 일수
	//var mon = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
    var chong;
	var yoil = aday.getDay();

	if ((yyy % 4 == 0 && yyy % 100 != 0) || yyy % 400 == 0) //년도 % 4 => 0 && 년도%100 =>인것은 제외 ,년도 %400 => 0 
	{
		alert(mmm);
		alert(day);
		chong = mmm + 1;
	}
	else
		chong = mmm;//배열에 구할 월의 달력을 넣어주면 된다.
		
		
	cal_form = "<table width=300 border=1 cellspacing=0>";
	cal_form = cal_form + "<tr>";
	cal_form = cal_form + " <td> 일 </td>";
	cal_form = cal_form + " <td> 월 </td>";
	cal_form = cal_form + " <td> 화 </td>";
	cal_form = cal_form + " <td> 수 </td>";
	cal_form = cal_form + " <td> 목 </td>";
	cal_form = cal_form + " <td> 금 </td>";
	cal_form = cal_form + " <td> 토 </td>";
	cal_form = cal_form + "</tr>";

	var day = 1;// 출력할 일의 변수
	// 1행의 시작
	cal_form = cal_form + "<tr>";
	for (j = 0; j < 7; j++) {
		if (yoil > j)
			cal_form = cal_form + " <td> &nbsp; </td>";
		else {
			cal_form = cal_form + " <td> " + day + " </td>"; // 일~월 출력
			day++;
		}
	}
	cal_form = cal_form + "</tr>";
	// 1행의 끝
	// 2행의 시작
	cal_form = cal_form + "<tr>";
	for (j = 0; j < 7; j++) {
		cal_form = cal_form + " <td> " + day + " </td>"; // 일~월 출력
		day++;
	}
	cal_form = cal_form + "</tr>";
	// 2행의 끝
	// 3행의 시작
	cal_form = cal_form + "<tr>";
	for (j = 0; j < 7; j++) {
		cal_form = cal_form + " <td> " + day + " </td>"; // 일~월 출력
		day++;
	}
	cal_form = cal_form + "</tr>";
	// 3행의 끝
	// 4행의 시작
	cal_form = cal_form + "<tr>";
	for (j = 0; j < 7; j++) {
		cal_form = cal_form + " <td> " + day + " </td>"; // 일~월 출력
		day++;
	}
	cal_form = cal_form + "</tr>";
	// 4행의 끝

	// 5행의 시작
	cal_form = cal_form + "<tr>";
	for (j = 0; j < 7; j++) {
		if (chong < day) //총일수보다 날짜의 수가 더 크다면
		{
			cal_form = cal_form + " <td> &nbsp; </td>";
		}
		else {
			cal_form = cal_form + " <td> " + day + " </td>"; // 일~월 출력
			day++;
		}
	}
	cal_form = cal_form + "</tr>";
	// 5행의 끝

	pkc.innerHTML = cal_form;
}
</script>
<body>
	년도
	<select name=year onchange=imsi()>
		<%
			for (int i = 1950; i < 2030; i++) {
		%>
		<option value=<%=i%>><%=i%></option>
		<%
			}
		%>


	</select> 월
	<select name=month onchange=imsi()>
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
	<input type=button onclick=cal_view() value=달력보기>
	<div id=pkc></div>
</body>
</html>