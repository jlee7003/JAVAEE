<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
// var xml=new XMLHttpRequest(); //stmt선언 같이 선언하는 것
// /* //  XMLHttpRequest는 HTTP request을 보내는 것을 매우 쉽게 만들어 준다.
// 당신은 간단하게 객체의 인스턴스를 생성하고, URL을 열고, request 를 보내기만 하면 된다.
// 처리 과정이 끝났을 때 request 객체에서 결과의 컨텐츠 뿐만 아니라 결과의 HTTP 상황도 이용할 수 있다.
// 이 페이지에서는 이 강력한 자바스크립트 객체에 대해 자주 사용하는 몇 가지와 잘 알려지지 않은 유스 케이스들을  다루도록 하겠다. */

// //이동하지 않고 갔다가오기 그 객체를 쓰기 위해서 변수를 만든다 그것이  var xml=new XMLHttpRequest();
// // xml.open("전송방식 post","전송 주소 test.jsp");
// // xml.send();//실제 전송단계 

// //alert();
//  function del(id)



var xml=new XMLHttpRequest();

	function imsi() 
	{
		xml.open("post", "test.jsp");//전송방식과 호출할 문서,매개값 test jsp에 값을 전달 및  실행 시키고 
		xml.send();
	}
	xml.onreadystatechange = function() 
	{
		if (xml.readyState == 4)
		{
			pkc.innerHTML= pkc.innerHTML + xml.responseText;
		}
	}
</script>
</head>
<body>
	<input type=button onclick=imsi() value=click>
	<div id=pkc></div>
</body>
</html>