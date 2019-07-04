<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
td{
border: 1px solid black;
}
table{
border: 1px solid black;
}
tr td:nth-child(1){
width:80px;

}

</style>
<body>
<form method=post action="input_ok.jsp">
<table width=600>

<tr>
<td>이름</td>
<td><input type=text name=name></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type=password name=name></td>
</tr>
<tr>
<td>제목</td>
<td><input type=text name=name></td>
</tr>
<tr>
<td>내용</td>
<td><textarea cols=60 rows=20></textarea></td>
</tr>
<tr>
<td>이메일</td>
<td><input type=text name=name></td>
</tr>
<tr>
<td>성별</td>
<td>
<input type=radio name=sex value=0>남자
<input type=radio name=sex value=1>여자
</td>
</tr>
<tr>
<td>음식취향</td>
<td>
<input type=checkbox name=food value=1>참치김밥
<input type=checkbox name=food value=2>그냥김밥
<input type=checkbox name=food value=3>치즈깁밥
<input type=checkbox name=food value=4>카레김밥
<input type=checkbox name=food value=5>짜장김밥
<input type=checkbox name=food value=6>피자김밥
<input type=checkbox name=food value=7>제육김밥
<input type=checkbox name=food value=8>꼬마김밥
<input type=checkbox name=food value=9>계란김밥
</td>
</tr>
<tr>
<td>주소</td>
<td>
<select name=juso>
<option value=1>서울</option>
<option value=2>경기도</option>
<option value=3>강원도</option>
<option value=4>충청도</option>
<option value=5>경상도</option>
<option value=6>전라도</option>
<option value=7>울릉도</option>
<option value=8>제주도</option>
<option value=9>독도</option>
</select>
</td>
</tr>
<tr>
<td colspan=2><input type=submit value=전송하기></td>
</tr>

</table>
</form>
</body>
</html>