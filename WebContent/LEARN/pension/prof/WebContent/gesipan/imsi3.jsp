<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <script> // 자바스크립트, 태그에 직접checked속성
   function check()
   {
	  var hh="1,2,5,6,";
	  var hob=hh.split(",");  // hh문자열을 ,기호로 나누어서 배열로 준다..
	  for(i=0;i<hob.length-1;i++)
		 document.pkc1.hobby[hob[i]].checked=true;
	  
	  //alert(hob.length); // 배열의 길이를 체크
	 /* document.pkc1.hobby[hob[0]].checked=true;
	  document.pkc1.hobby[hob[1]].checked=true;
	  document.pkc1.hobby[hob[2]].checked=true; */
   }
 </script>
</head>
<body onload=check()>
  <form name=pkc1>
    <input type=checkbox name=hobby>낚시<br>
    <input type=checkbox name=hobby>여행<br>
    <input type=checkbox name=hobby>독서<br>
    <input type=checkbox name=hobby>음주<br>
    <input type=checkbox name=hobby>먹방<br>
    <input type=checkbox name=hobby>그림<br>
    <input type=checkbox name=hobby>공부<br>
  </form>
  <p><hr>
  <form name=pkc2>
    <input type=checkbox name=hobby>낚시<br>
    <input type=checkbox name=hobby checked>여행<br>
    <input type=checkbox name=hobby>독서<br>
    <input type=checkbox name=hobby checked>음주<br>
    <input type=checkbox name=hobby>먹방<br>
    <input type=checkbox name=hobby checked>그림<br>
    <input type=checkbox name=hobby>공부<br>
  </form>
</body>
</html>