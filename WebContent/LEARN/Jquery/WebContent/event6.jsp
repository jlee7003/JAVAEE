<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	function imsi() {
		alert("함수");
	}

	//$(선택자).이벤트();
	//$(선택자).메소드();

	$(function() {//$(document).ready(function() {실행}); -> 왠만하면 document.ready를 무조건 적어줄것
		$(".aa").mouseover(function() {//jquery로 이벤트 주는법
			$(".aa").attr("src", "b.jpg");
		});
		
		$(".aa").mouseout(function() {//jquery로 이벤트 주는법
			$(".aa").attr("src", "a.jpg");
		});
	});
	
</script>
<body>
	<div id=pkc>안녕하세요</div>
	<img src=a.jpg class=aa width=100>


</body>
</html>