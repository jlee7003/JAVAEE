<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	//select 채그 
	/*1.선택된 option 태그의 값을 가져오기
	  2.
	 *///-> 옛날 방식:document.pkc.food[document.pkc.food.selectedIndex].value;
	function sel_View() {
		alert(document.pkc.food.value);
	}
	
	function move_site()
	{
		//이동할 사이트의 주소 가지고 오기-> location에 주소 넘기기
		 location=document.pkc.site.value;
		//브라우저 주소창에 value에 해당되는 주소를 입력하고 엔터와 동일한 기능
	}
	function check()//사용자가 선택한 매뉴가 문서를 읽을때 나타나게 하기
	{
		var ch=3;
		//document.pkc.food.selectedIndex=ch;//<-value가 선택되어있지 않을경우 사용
		document.pkc.food.value=ch;
	}
</script>
<body align=center onload=check()>
	<form name=pkc>
		<select name=food onchange=sel_View()>
<!-- 		onchange: 다른 옵션이 선택되었을떄 실행 -->
			<option>선택</option>
			<option value=1>짜장</option>
			<!--value가 존재하면 value 부터 가져오게 됨
                              없으면 텍스트가 나오게 됨 -->
			<option value=2>노랑</option>
			<option value=3>주황</option>
			<option value=4>파랑</option>
			<option value=5>검정</option>
			<option value=6>빨강</option>
			</select>
<!-- 		</select> <input type=button onclick=sel_View() value=확인> -->
	    <select name=site onchange=move_site()>
	    <option>FAMILYSITE</option>
	    <option value="http://www.naver.com">네이버</option>
	    <option value="http://www.daum.net">다음</option>
	    <option value="http://www.coupang.com">네이버</option>
	    	</select>
	
	</form>
</body>
</html>