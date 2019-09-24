<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?after">
<script src="../etc/main.js"></script>
</head>
<body>
  <jsp:include page="../nav.jsp" flush="false" />

  <div id=right>
  <section class=login_section>
<!--     login.jsp 내용 추가 -->
<div id=login_main>
<div id=first></div><!-- 로그인 글자 -->
LOGIN
<div id=second></div><!-- 로그인 아이디 찾기 비밀번호 찾기 -->
<div id=outer>
<div id=outer_left>
<div id=userid>
<label for=uid>아이디</label> 
<!-- 글자를 눌러도 커서가 인풋타입에 들어감 -->
<input type=text name=userid id=uid></div>
<div id=pwd>
<label for=pw>비밀번호</label> 
<!-- 글자를 눌러도 커서가 인풋타입에 들어감 -->
<input type=password name=pwd id=pw>

</div>
</div>
<div id=outer_right>
<input type=submit value=login id=login>
</div>
</div>
<div id=third><!-- 아이디저장, 보안접속 -->
<input type=checkbox name=id_save id=id_save><label for=id_save>아이디저장</label>
<img id=lock src=img/aa.png> 보안접속
</div>
<div id=fourth><!-- 아이디 찾기 비밀번호 찾기-->
ⓞ아이디 찾기 ⓞ비밀번호 찾기
</div>

<div id=fifth><!-- 네이버, 페이스북, 카카오로그인 -->
<div id=naver>네이버</div>
<div id=facebook>페이스북</div>
<div id=kakao>카카오</div>
</div>
<div id=sixth></div><!-- 비회원 주문조회 -->
<div id=seventh></div><!-- 비회원 주문조회 -->
</div>
    </section>
    <jsp:include page="../footer.jsp" flush="false" />
    
<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
  </div>  
</body>
</html>





