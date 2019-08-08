<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method=post action=write_ok.jsp>
제목 <input type=text name=title size=50><p>
내용 <textarea cols=50 rows=6 name=content></textarea><p>
작성자 <input type=text name=name size=8><p>
연령 <select name=age>
	<option value=0>10대 </option>
	<option value=1>20대</option>
	<option value=2>30대 </option>
	<option value=3>40대</option>
	<option value=4>50대</option>
</select><p>
성별<input type=radio name=sung value=0> 남자
<input type=radio name=sung value=1>여자 <p>
비밀번호<input type=password name=pwd><p>
<input type=submit value=저장하기>
</form>

<!-- 입력 양식을 만들고 각 input에다가 name을 붙여 form을 통해 보내는 것이 핵심이다 -->
</body>
</html>