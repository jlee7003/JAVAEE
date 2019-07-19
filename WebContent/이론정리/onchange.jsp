<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function changeLangSelect()
{ 
	var langSelect = document.getElementById("id-lang");
	
	var selectValue = langSelect.options[langSelect.selectedIndex].value;
	var selectText = langSelect.options[langSelect.selectedIndex].text;
    document.all.txtlang2.value=selectText;
    document.all.txtlang1.value=selectValue;
}
</script>
<body>
<select id="id-lang" name=lang onchange="changeLangSelect()">
<option value="" selected disabled>언어를 선택</option>
<option value="en">en(영어)</option>
<option value="ko">ko(한글)</option>
</select>
<input type=text name=txtlang1>
<input type=text name=txtlang2>
</body>
</html>