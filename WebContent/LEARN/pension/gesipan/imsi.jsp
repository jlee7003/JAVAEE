<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function sung_in() //함수를 실행하면 form1에 있는 남녀 체크
{
	document.leh.sung[0].checked="true";
}    //db값과 성이름의 배열 인덱스를 계산해줘 사용
</script>
<body onload=sung_in()>
<!-- 자바스크립트에서 실행 태그 내에서 실행
 공통점: checked 속성 -->
   <form name=leh>
   성별: <input type=radio name=sung value=1>남자
   <input type=radio name=sung value=2>여자
   </form>
   <hr>
     <form name=leh2>
   성별: <input type=radio name=sung value=1>남자
   <input type=radio name=sung value=2 checked>여자
<!--    jsp에서 if문을 통해 체크된 radio내에 checked 속성 추가 -->
   </form>
</body>
</html>