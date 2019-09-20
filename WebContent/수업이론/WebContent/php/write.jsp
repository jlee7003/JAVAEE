<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 사용자가 게시판에 글을 남길수 있는 폼태그를 꾸미기 -->
 <!-- DB에 저장할 내용은 무조건 form태그내에 들어있어야 된다. -->
 <!-- 폼태그내의 입력양식태그에는 name을 꼭 주어야 된다. -->
 <!-- name의 사용 => 자바스크립트에서, jsp에서 값을 읽어올때(request.getParameter()) -->
 <!-- post는 header에 포함되어 전송 => 입력값을 숨기기 -->
 <!-- get은 문서이름뒤에 붙어 가는것 => write_ok.jsp?name=홍길동 -->
 <form method=post action=write_ok.jsp> 
   제목 <input type=text name=title size=50> <p>
   내용 <textarea cols=50 rows=6 name=content></textarea> <p>
   작성자 <input type=text name=name size=8> <p>
   연령 <select name=age>
        <option value=0> 10대 </option>
        <option value=1> 20대 </option>
        <option value=2> 30대 </option>
        <option value=3> 40대 </option>
        <option value=4> 50대 </option>
      </select> <p>
      성별 <input type=radio name=sung value=0>남자
        <input type=radio name=sung value=1>여자 <p>
      비밀번호 <input type=password name=pwd> <p>
      <input type=submit value=글작성>
      <!-- type=submit 버튼은 폼태그안에 입력값을 서버로 전송하는 버튼 -->
 </form>
</body>
</html>











