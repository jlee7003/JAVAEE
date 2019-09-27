<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?v12q2">
<script src="../etc/main.js?after1"></script>
</head>
<style>
.findid_space{
	padding-top:100px;
}
</style>
<body>
  <jsp:include page="../nav.jsp" flush="false" />

  <div id=right>
    <section class=findid_section>
    <form method=post action=findid_ok.jsp>
    <div class=findid_space align=center>아이디 찾기</div>
    <div class=find_box align=center>
    <div class=form_box >
     <form method=post action=findid_ok.jsp> 
      <div align=center id=font_ww>아이디 찾기</div>
    <div id=ff11>
    <div class=left>> 회원유형</div>
    <div class=right>
     <select>
    <option>개인회원</option>
    <option>개인 사업자회원</option>
    <option>법인 사업자회원</option>
    <option>외국인 회원</option>
    </select> </div></div>
    
    <div id=ff11 class=right1>  
     <input type=radio  name=sel value=0 onclick=chg(0) checked>이메일
    <input type=radio  name=sel value=1 onclick=chg(1)>휴대폰번호
    </div>
    
    <div id=ff11> 
      <div class=left>> 이름   </div>
      <div class=right> <input type=text name=name> </div>
   </div>
   
    <div id=ff11> 
      <div class=left id=aa>> 이메일로 찾기</div>
      <div class=right> <input type=text id=email name=val> </div>
        </div>

 

</form>
    </div>
        <input type=submit value="확인" id=a3>
  
    
    
    </div>
      </form>
     </section>
    <jsp:include page="../footer.jsp" flush="false" />
    
<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
  </div>  

</body>
</html>
