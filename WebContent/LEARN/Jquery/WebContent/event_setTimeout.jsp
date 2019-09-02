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

	setTimeout(function() {//$(document).ready(function() {실행}); -> 왠만하면 document.ready를 무조건 적어줄것
		$("#aa").mouseover(function() {//jquery로 이벤트 주는법
			$("#aa").css("border", "1px solid blue").css("color", "red");
		});
	},1500);
</script>
<body>
	<div id=aa>·짜장면</div>

</body>
</html>