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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>


<script> //attr.html  -> 태그 속성에 접근하려면  attribute가 필요
//attr("속성","값")
// jquery
$(function() //onload 같은 개념
		{
	        $("input").attr("value","호호");
			alert(); //알람이 실행되는 동안 변하지 않음
			$("input").removeAttr("value");
			
		});
// 자바스크립트 
window.onload=function()
		{
			document.getElementsByTagName("input")[0].value="하하하";
		    alert();
		    document.getElementsByTagName("input")[0].value="";
		}
		//이벤트는 임의구현 방식으로 구현을 해주어야함
		//세미클론(;)을 해주어야 에러가 발생하지 않는다.
</script>
</head>
<body>
<form method=post action=write_ok.jsp>

<input type=submit value=확인>
<input type=text>
</form>

</body>
</html>