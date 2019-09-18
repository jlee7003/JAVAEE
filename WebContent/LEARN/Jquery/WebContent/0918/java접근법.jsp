<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
//1.select에 있는 선택된 값을 가져오기
//2.select에 선택된 내용을 보이게 하기
//3.select에 option 태그를 만들어 준다.
/*-----------------------------------*/
// 자바스크립트에서 select를 접근하는 방법
/* 
1.document.폼이름.select이름.요소
2.id,class 같은 요소를 통해서 접근하는 방법
3.this를 사용하여 접근하기
*/
function form_method()//1번 접근법
{
	//select중에 선택된 value 값을 가져오기
	alert(document.pkc.menu.value); //pkc의 menu에 선택되어진 것의 value 값
	alert(document.pkc.menu[document.pkc.menu.selectedIndex].text); 
	//pkc의 menu에 선택되어진 것의 text 값 가져오기
	
}
function id_method()//2번 접근법
{
	alert(document.getElementById("menu").value);
	alert(document.getElementById("menu")[document.getElementById("menu").selectedIndex].text);
}
function this_method(pp){
	alert(pp.value);
	alert(pp[pp.selectedIndex].text);
}
</script>
<body>
<form name=pkc>
<select name=menu onchange=form_method()>
<option value=0>선택</option>
<option value=1>메뉴1</option>
<option value=2>메뉴2</option>
<option value=3>메뉴3</option>
<option value=4>메뉴4</option>
</select>
</form>
<hr>
<select id=menu onchange=id_method()>
<option value=0>선택</option>
<option value=1>메뉴1</option>
<option value=2>메뉴2</option>
<option value=3>메뉴3</option>
<option value=4>메뉴4</option>
</select>
<hr>
<select onchange=this_method(this)> <!-- //this라는 단어가 들어가면 제일 앞에 있는 태그가 된다 -->
<option value=0>선택</option>
<option >메뉴1</option> <!-- value가 없을 경우에는 text를 가지고 온다 -->
<option value=2>메뉴2</option>
<option value=3>메뉴3</option>
<option value=4>메뉴4</option>
</select>

</body>
</html>