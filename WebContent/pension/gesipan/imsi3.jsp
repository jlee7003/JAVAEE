<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function check()
{
	var hh="2,4,5,"; 
	var hob=hh.split(","); //hh문자열을 , 기호로 나누어서 배열로 준다
	for(i=0;i<hob.length-1;i++)
    document.leh1.hobby[hob[i]].checked=true;
	
// 	document.leh1.hobby[hob[1]].checked=true;
// 	document.leh1.hobby[hob[2]].checked=true;
	
}
</script>
<body onload=check()>
   <form name=leh1>
   <input type=checkbox name=hobby>여행<br>
    <input type=checkbox name=hobby>독서<br>
     <input type=checkbox name=hobby>음주<br>
      <input type=checkbox name=hobby>먹방<br>
       <input type=checkbox name=hobby>그림<br>
        <input type=checkbox name=hobby>공부<br>
           </form>
           
           <hr>
           
              <form name=leh2>
   <input type=checkbox name=hobby>여행<br>
    <input type=checkbox name=hobby >독서<br>
     <input type=checkbox name=hobby>음주<br>
      <input type=checkbox name=hobby>먹방<br>
       <input type=checkbox name=hobby>그림<br>
        <input type=checkbox name=hobby>공부<br>
           </form>
</body>
</html>