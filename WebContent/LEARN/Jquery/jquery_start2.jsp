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
<script>
//주소연결
//script 태그내에서 jquery 사용하면 된다
//사용법
//jquery에서 현재문서의 각 요소들(태그,아이디,클래스)에 jquery로 접근하는 방법
//-> css의 선택자를 그대로 선택할 수 있다.
// $("선택자").메소드()의 형태를 가진다.
// $("#pkc").css("color","red"); //이대로 실행한다면 순차적으로 실행이 되기에 아래로 욺겨야 실행이 됌
//css-> 스타일 속성을 바꾸는 메소드
// css("속성","값")
</script>
<script>
// window.onload=function() 읽을때 자동으로 실행

$(function()//document.ready가 생략되어도 가능함
		// $(document).ready(function()
		{
		alert(); //alert가 먼저 실행되고
// 		$("#pkc").css("color","red").css("font-size","20px"); //이렇게하는것도 가능함
		$("#pkc").css("color","red"); //그 다음에 색이 변함 
		$("#pkc").css("font-size","40px");
		$("#pkc").css("background-color","blue");
		$("span").css("color","gray");
		$("span").css("border","1px solid black");
		$("span").css("border-radius","5px");
		$(".test").css("color","pink");
		});
		
	//$(선택자).이벤트or 메소드(function(){실행내용});
		
// $("#pkc").css("color","red"); //항상실행
</script>
</head>
<body>
<div id=pkc> 안녕하세요 </div>
<div class=test> 안녕하세요 </div>
<span> 안녕하세요 </span>

</body>
</html>