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
var chk=0;
	function imsi() { //딱 한번만 클릭 가능하게
	if(chk==0)
		{
		alert("4번 클릭");
		chk++;
		}
	}
	
</script>
<body>
	<div id=aa>·1번</div>
	<div id=ss>·2번</div>
	<div id=dd>·3번</div>
	<div id=ff onclick=imsi()>·4번</div>
	


</body>
</html>