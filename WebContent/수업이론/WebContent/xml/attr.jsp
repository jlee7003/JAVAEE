<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 //request,session,application
 request.setAttribute("name","홍길동");
//request.setAttribute("name","홍길동"); //request는  그 문서 안에서만 만들고 사용 할 수 있음
 session.setAttribute("name","홍길동파덜"); //다른 브라우저로 읽으면 다른 세션에 있기에 읽어올수 없음
 application.setAttribute("name","홍길동할아버지");
 
 
 %>
 
 <!-- 
 (1) request 영역
 -현제 문서 내에서만 사용이 가능함으로 별도로 값을 전달 할수 있는 장치가 필요함
- request 영역은 한 번의 웹 브라우저(클라이언트)의 요청에 대해 같은 요청을 공유하는 페이지가 대응된다. 
- 이것은 웹 브라우저의 한 번의 요청에 단지 한 개의 페이지만 요청될 수 있고, 때에 따라 같은 request 영역이면 두 개의 페이지가 같은 요청을 공유할 수 있다.
- 따라서 request 영역은 객체를 하나 또는 두 개의 페이지 내에서 공유할 수 있다.
- include 액션 태그, forward 액션 태그를 사용하면 request 기본 객체를 공유하게 되어서 같은 reqeust 영역이 된다.
- 주로 페이지 모듈화에 사용된다.

(2) session 영역
- session 영역은 하나의 웹 브라우저 당 1개의 session 객체가 생성된다.
- 즉, 같은 웹 브라우저 내에서는 요청되는 페이지들은 같은 객체를 공유하게된다.

(3) application 영역
- application 영역은 하나의 웹 어플리케이션 당 1개의 applicaition 객체가 생성된다.
- 즉, 같은 웹 어플리케이션에 요청되는 페이지들은 같은 객체를 공유한다.

--------------------------------------------------
<!-- setAttribute("변수명","값") : 객체의 변수를 만들기
 getAttribute("변수명") :  변수의 값을 가지고 오기
 removeAttributeNames("변수명") : 해당 변수를 삭제
 getAttributeNames() : 변수의 이름을 가져오기 -->

출처: https://hyeonstorage.tistory.com/88 [개발이 하고 싶어요] -->
</body>
</html>

