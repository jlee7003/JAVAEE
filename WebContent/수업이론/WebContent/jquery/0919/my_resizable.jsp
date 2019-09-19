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
width:300px;
height:300px;
overflow:hidden;
}
#bb{
width:300px;
height:60px;
}
</style>
<script>
$(function()
		{
		$("#aa").resizable();
		$("#bb").resizable({
			
			maxHeight:300,
			minHeight:60,
			maxWidth:500,
			minWidth:300,
// 			animate:true
		});
		})
		
</script>
<title>Insert title here</title>
</head>
<body>
<div id=aa class="ui-widget-content">
<h3 class="ui-widget-header">practice test</h3>
<img src=b.jpg>
</div>
<textarea cols=30 rows=3 id=bb></textarea>
</body>
</html>