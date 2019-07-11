<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

%>
<script>
var count=0;
function plus()
{
count++;
document.all.count.innerHTML=count;
}

function minus()
{
	
}
</script>
<body>
<input type=button value="+1" onclick=plus()>
<div id=count> </div>
<input type=button value="-1" onclick=minus()>
</body>
</html>