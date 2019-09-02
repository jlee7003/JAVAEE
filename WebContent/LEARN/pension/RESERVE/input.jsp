<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.time.LocalDate"%>
<%@ include file="../main/top2.jsp"%>
<%
	//reserve.jsp에서 보낸 값을 저장하기
	//plusday를 사용해야 input을 만들수 있음

	 String bang=request.getParameter("bang");
   String y=request.getParameter("y");
   String m=request.getParameter("m");
   if(m.length()==1)
   {
	   m="0"+m; // 1~9일 경우  => 0을 앞에 붙인다..
   }
   String d=request.getParameter("d");
   if(d.length()==1)
   {
	   d="0"+d;//1~9일 경우 0을 붙임
   }
	
	//DB에 저장된 날짜 형식은 -> yyyy-MM-dd(2019-07-10)
	String date=y+"-"+m+"-"+d;
	//out.print(date);
	//아이디 예약자이름 전화번호
	//예약방이름 입실 indate outdate writeday
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
</style>
<script>
var first=150000;
var second=0;
window.onload=function()
{
// 	document.pkc.sung.selectedIndex=1;
	document.pkc.suk_price.value=150000;
	document.getElementById("sung").selectedIndex=1;
	document.getElementById("tot").innerText="150,000";
	document.getElementById("chong").innerText="150,000";
	
// 	var aa=document.getElementById("sung").selectedIndex;
}

function cal()//숙박과 인원을 계산하여 합계금액에 전달
{
	var s=document.pkc.suk.value;//숙박일수
	var s_price=s*150000;
// 	alert(s_price);
	

	var n1=parseInt(document.pkc.sung.value);
	var n2=eval(document.pkc.child.value);//총인원
	var inwon=n1+n2;
	document.pkc.inwon.value=inwon;
	if(inwon > 6)
		{
		alert("인원이 초과되었습니다");
		document.pkc.sung.selectedIndex=1;
		document.pkc.child.selectedIndex=0;
		inwon=2;
		}
// 	alert(inwon);	//숙박일수 금액 + 총인원 금액을 tot에 전달해야함
var chuga=inwon-2;//총인원-기준인원
if(chuga> 0)
	var in_price=chuga*10000;
else
	var in_price=0; //1~2명일 경우
// 	alert(in_prince);
	first=s_price+in_price; //계산 되어진 숙박 요금을 변수에 저장
	document.pkc.suk_price.value=first;
	
	var tot_price=comma(s_price+in_price); //메소드 값을 변수로 넣어주도 된다.
	
   document.getElementById("tot").innerText=tot_price;
	document.getElementById("chong").innerText=comma(first+second);
   //tot인 곳에 a+b의 값 전달
   
}
function comma(price)
{
	price=price+"";//comma 메소드는 받는 변수가 문자여야함
	price=price.replace(/\B(?=(\d{3})+(?!\d))/g,",");//정규식
	return price;
}
function chuga_cal()//추가금액 계산 함수
{
  var pp =new Array();
	
//   for(var i=0;i<3;i++)
// 	  {
// 	  if(document.pkc.ch[i].checked)
// 			pp[i]=parseInt(document.pkc.ch[i].value);
// 		else
// 			pp[i]=0;
// 	   }
	
	   if(document.pkc.spa.checked) // 체크가 되었다면
		   var p1=parseInt(document.pkc.spa.value);
	   else
		   var p1=0;
	   
	   if(document.pkc.charo.checked)
	       var p2=parseInt(document.pkc.charo.value);
	   else
		   var p2=0;
	   
	   if(document.pkc.bbq.checked)
	       var p3=parseInt(document.pkc.bbq.value);
	   else
		   var p3=0;
	
	   
	   second=p1+p2+p3; // 추가요금을 변수에 저장
	   document.pkc.chu_price.value=second;
	   document.getElementById("chong").innerText=comma(first+second);
	   document.getElementById("chu").innerText=comma(p1+p2+p3);
	//script에 있는 값을 hidden으로 주기
}

</script>
<div id=section>
<form name=pkc method=post action=input_ok.jsp> 
<input type=hidden name=suk_price>
<input type=hidden name=chu_price>
<!-- 값을 보내기 위해 히든으로 숨겨서 form에 넣어줌 input 태그 안에 있어야 값을 넘겨줄수 있다. -->
<input type=hidden name=bang value="<%=bang%>"> 
<input type=hidden name=y value="<%=y%>">
<input type=hidden name=m value="<%=m%>">
<input type=hidden name=d value="<%=d%>">
 <table width=600 align=center>
 <tr>
 <td>예약방</td>
  <td><%=bang%></td>
</tr>
 <tr>
 <td>예약자</td>
  <td><input type=text name=name></td>
</tr>
 <tr>
 <td>전화번호</td>
  <td><input type=text name=phone></td>
</tr>
 <tr>
 <td>입실일</td>
  <td><%=y%>-<%=m%>-<%=d%></td>
</tr>

<tr>
<td>예약상세</td>
<td>
  <select name=suk onchange=cal()>
    <option value=1> 1박 </option>
    <option value=2> 2박 </option>
    <option value=3> 3박 </option>
    <option value=4> 4박 </option>
  </select>
   
  성인 
  <select name=sung id=sung onchange=cal()> <!-- 2명보다 크면 1인당 만원 -->
    <option value=1> 1명 </option> <!-- selectedIndex 0 -->
    <option value=2> 2명 </option> <!-- selectedIndex 1 -->
    <option value=3> 3명 </option> <!-- selectedIndex 2 -->
    <option value=4> 4명 </option> <!-- selectedIndex 3 -->
    <option value=5> 5명 </option> <!-- selectedIndex 4 -->
    <option value=6> 6명 </option> <!-- selectedIndex 5 -->
  </select>
 아동
  <select name=child onchange=cal()>
    <option value=0> 0명 </option>
    <option value=1> 1명 </option>
    <option value=2> 2명 </option>
    <option value=3> 3명 </option>
    <option value=4> 4명 </option>
    <option value=5> 5명 </option>
    <option value=6> 6명 </option>
  </select>
 합계금액 : <span id=tot></span>원 <p>
 <input type=checkbox name=spa onclick=chuga_cal() value=50000> 스파 추가 50,000원<p>
 <input type=checkbox name=charo onclick=chuga_cal() value=30000> 숯불 세트 30,000원<p>
 <input type=checkbox name=bbq onclick=chuga_cal() value=40000> 바베큐세트 40,000원
 <p style="margin-left:400px"> 추가금액 : <span id=chu>0</span>원 </p>
 <p style="margin-left:400px"> 총합계금액 : <span id=chong>150,000</span>원 </p>
</td>
</tr>
<tr>
<td>

<input type=submit value=예약> 
</td>
</tr>
 </table>
 </form>
</div>
</html>
<%@ include file="../main/bottom.jsp"%>