<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- get.jsp -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 현재 문서(get.jsp)에서 target.jsp로 값을 보낼때
  get방식으로 보내는 방법 -->
   <!-- 나이 : 22 , 아이디 : hong -->
   <!-- 이름(변수)=값 -->
  <a href="target.jsp?userid=hong&age=22"> target.jsp로 이동 </a> <p>
<!--    target.jsp에 userid의 값: hong, age의 값:22 -->
  <form method=get action=target.jsp>
  아이디<input type=text name=userid><p>
 나이<input type=text name=age><p>
<input type=submit value=전송> 
   </form>
   
   <!-- 
   1.form
   2.a 태그로 보내기
   3.직접 입력하는 것
   
    -->
</body>
</html>
















