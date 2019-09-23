<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css">
<script src="../etc/main.js"></script>
</head>
<body>
  <jsp:include page="../nav.jsp" flush="false" />
<!--  원래쓰던 include와 jsp:include의 차이점?   -->
<!--   정적인 방식은 JSP의 라이프 사이클 중 JSP 페이지 번역 및 컴파일 단계에서 필요한 
JSP를 읽어서 메인 JSP의 자바 소스 및 클래스에 포함 시키는 방식입니다. 이와 반대로, 동적인
 방식은 페이지가 호출될 때마다 지정된 페이지를 불러들여서 수행도록 되어 있습니다. 정적인 
 include와 동적인 include는 생성되는 자바 파일에서 다르게 구성 됩니다. 정적인 방식이
  동적인 방식보다 빠를 수 밖에 없습니다. 평균 응답 시간을 보면 동적인 방식이 38배 더 느리게 나타납니다. 
  즉, 성능을 더 빠르게 하려면 정적인 방식을 사용해야 한다는 의미가 됩니다. 
  
  
  include file="파일의 위치(url)" 는 jsp 파일이 자바파일로 바꿀때(페이지 번역 및 컴파일 단계)
자바문서에 삽입되어 컴파일 되는것이고
<jsp:include page=파일 />은 자바로 바뀌고 컴파일이후 실행중에 값이 들어간다
이 정도 입니다-->
  
  <div id=right>
    <section> 상품 </section>
    <jsp:include page="../footer.jsp" flush="false" />
    
<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
  </div>  
</body>
</html>





