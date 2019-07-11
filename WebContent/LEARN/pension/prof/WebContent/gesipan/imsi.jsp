<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <script>
   function sung_in()  // 함수를 실행하면 form1에 있는 남자,여자를 체크
   {
	   document.pkc1.sung[1].checked="true";
	                // DB값과 sung이름의 배열인덱스를 적절하게 계산
   }
 </script>
</head>
<body onload=sung_in()> <!-- 자바스크립트에 실행, 태그내에 실행 -->
       <!-- 공통점 : checked속성 -->
    <form name=pkc1>
      성별 : <input type=radio name=sung> 남자
          <input type=radio name=sung> 여자
    </form>
    <p>
    <hr>
    <form name=pkc2>
      성별 : <input type=radio name=sung checked> 남자
          <input type=radio name=sung> 여자
          <!-- jsp에서 if문을 통해 체크된 radio내에 checked 속성주기 -->
    </form>
</body>
</html>












