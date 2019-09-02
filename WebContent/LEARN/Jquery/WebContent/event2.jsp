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
		   alert("1클릭");
		});

		$("#ss").on("mouseover",function() {//jquery로 이벤트 주는법
			   alert("2클릭");
		});

		$("#dd").off("mouseover",function() {//jquery로 이벤트 주는법
			   alert("3클릭");
		});
		
		$("#ff").one("mouseover",function() {//jquery로 이벤트 주는법
			   alert("4클릭");
		});
	
	});
</script>
<body>
	<div id=aa>·1번</div>
	<div id=ss>·2번</div>
	<div id=dd>·3번</div>
	<div id=ff>·4번</div>
	


</body>
</html>