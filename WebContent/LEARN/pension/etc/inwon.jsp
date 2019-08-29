<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- for문으로 길이 줄이기 -->
<script>
var first=150000;
var second=0;
window.onload=function()
{
// 	document.pkc.sung.selectedIndex=1;
	document.getElementById("sung").selectedIndex=1;
	document.getElementById("tot").innerText="150,000";
	
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
	
  for(var i=0;i<3;i++)
	  {
	  if(document.pkc.ch[i].checked)
			pp[i]=parseInt(document.pkc.ch[i].value);
		else
			pp[i]=0;
	   }
	
// 	if(document.pkc.ch[0].checked)
// 		 pp[0]=parseInt(document.pkc.ch[0].value);
// 	else
// 		 pp[0]=0;
	
// 	if(document.pkc.ch[1].checked)
// 		 pp[1]=parseInt(document.pkc.ch[1].value);
// 	else
// 		 pp[1]=0;
	
// 	if(document.pkc.ch[2].checked)
// 		 pp[2]=parseInt(document.pkc.ch[2].value);
// 	else
// 		 pp[2]=0;
	
	second=pp[0]+pp[1]+pp[2];
	document.getElementById("chu").innerText=comma(pp[0]+pp[1]+pp[2]);
	document.getElementById("chong").innerText=comma(first+second);
}

</script>
<body>
<form name=pkc>
101호 기준2/최대6
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
 <input type=checkbox name=ch onclick=chuga_cal() value=50000> 스파 추가 50,000원<p>
 <input type=checkbox name=ch onclick=chuga_cal() value=30000> 숯불 세트 30,000원<p>
 <input type=checkbox name=ch onclick=chuga_cal() value=40000> 바베큐세트 40,000원
 <p style="margin-left:400px"> 추가금액 : <span id=chu>0</span>원 </p>
 <p style="margin-left:400px"> 총합계금액 : <span id=chong>150,000</span>원 </p>
 </form>
</body>
</html>
</body>
</html>