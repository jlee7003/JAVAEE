<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- mouseover.html -->
<meta charset="UTF-8">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
$(function(){ //addclass("클래스명");->
	//-> 특정요소에 클래스의 스타일을 적용
	$("#btn").click(function(){
		$(".pkc").addClass("aa");
		//클릭시에 class pkc에 aa클래스의 스타일을 적용
	});
	
	$("#btn2").click(function(){
		$(".pkc").removeClass("aa");
		//클릭시에 class pkc에 aa클래스의 스타일을 적용
	});
});

</script>
<style>
#pkc:hover{
color:red;
}
.aa{
width:200px;
border:1px solid red;
color:blue;
font-size:30px;
}
</style>

</head>
<body>
<input type=button id=btn value=addClass>
<input type=button id=btn2 value=removeClass>
<div class=pkc>감사하세요</div><p>
<div id=pkc>안녕하세요</div>


</body>
</html>
