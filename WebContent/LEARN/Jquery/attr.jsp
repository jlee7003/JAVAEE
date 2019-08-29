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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script> //attr.html  -> 태그 속성에 접근하려면  attribute가 필요
//attr("속성","값")
	//(선택자,메소드)
	//(선택자,속성)

// jquery
$(function()
		{
			alert(); //알람이 실행되는 동안 변하지 않음
// 			$("input").attr("type","checkbox");
			$("form").attr("action","update_ok.jsp");
		});
// 자바스크립트 
window.onload=function()
		{
			document.getElementsByTagName("form")[0].action="update_ok.jsp";
			document.getElementsByTagName("input")[0].type="checkbox";
		}
</script>
</head>
<body>
<form method=post action=write_ok.jsp>

<input type=submit value=확인>
<input type=text>
</form>

</body>
</html>