<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery 연결방법
1.파일을 다운받아 저장경로에 넣어줌
2.url 주소로 연결하는 방법
 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>

<script>
$(function()//document.ready가 생략되어도 가능함
		// $(document).ready(function()
		{
		alert();
		$("#pkc").css("color","red"); 
		});
window.onload=function()
{
 var tt=document.getElementById("pkc");
 tt.style.color="red";
}

</script>
<div id=pkc> 안녕하세요 </div>
</body>
</html>