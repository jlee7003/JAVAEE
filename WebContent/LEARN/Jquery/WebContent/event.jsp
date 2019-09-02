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
		$("#aa").mouseover(function() {//jquery로 이벤트 주는법
			$("#aa").css("border", "1px solid blue").css("color", "red");
		});

		$("#ss").mouseover(function() {//jquery로 이벤트 주는법
			$("#ss").css("border", "1px solid blue").css("color", "red");
		});

		$("#dd").mouseover(function() {//jquery로 이벤트 주는법
			$("#dd").css("border", "1px solid blue").css("color", "red");
		});
		
		
		$("#aa").mouseout(function() {//jquery로 이벤트 주는법
			$("#aa").css("border", "none").css("color", "black");
		});

		$("#ss").mouseout(function() {//jquery로 이벤트 주는법
			$("#ss").css("border", "none").css("color", "black");
		});

		$("#dd").mouseout(function() {//jquery로 이벤트 주는법
			$("#dd").css("border", "none").css("color", "black");
		});
	});
</script>
<body>
	<div id=aa>·짜장면</div>
	<div id=ss>·짬뽕</div>
	<div id=dd>·우동</div>
	
</body>
</html>