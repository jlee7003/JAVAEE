<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
#aa {
	wclassth: 300px;
	height: 300px;
	overflow: hclassden;
}

img {margin-top:10px;}
</style>
<script>
	$(function() {
		$(".aa").resizable({
			maxHeight:200,
			maxWidth:300,
			minHeight:60,
			minWidth:80,
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<img src=b.jpg width=80 height=60 class=aa>
	<img src=1.jpg width=80 class=aa>
	<img src=2.jpg width=80 class=aa>
	<img src=3.jpg width=80 class=aa>
	<img src=4.jpg width=80 class=aa>
		<img src=6.jpg width=80 class=aa>
</body>
</html>