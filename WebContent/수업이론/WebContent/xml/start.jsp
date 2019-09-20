<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- 접속한 사람의 숫자를 저장하는 변수를 생성 -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- setAttribute("변수명","값") : 객체의 변수를 만들기
 getAttribute("변수명") :  변수의 값을 가지고 오기
 removeAttributeNames("변수명") : 해당 변수를 삭제
 getAttributeNames() : 변수의 이름을 가져오기 -->
 
<%
application.setAttribute("num",0);
//application 객체의 num변수를 만들고 0으로 초기화
%>
</body>
</html>