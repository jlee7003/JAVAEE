<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="../top.jsp" %>
<style>
   #section {
    width:1200px;
    height:400px;
   }
   #section div:nth-child(1) { 
   /* id가 section 태그내의 div태그내의 첫번째 div태그*/
     font-size:30px;
   }
   #section div:nth-child(3) {
     font-size:12px;
   }
   #section div:nth-child(5) {
     font-size:12px;
   }
   #section input[type=text] { /* input태그중에 type=text인거 */
     width:270px;
     height:27px;
   }
   #section input[type=password] { /* input태그중에 type=password인거 */
     width:270px;
     height:27px;
   }
   #section input[type=submit] { /* input태그중에 type=submit인거 */
     width:274px;
     height:31px;
     background:blue;
     border:1px solid blue;
     color:white;
   }
   #section input[type=button] { /* input태그중에 type=button인거 */
     width:150px;
     height:31px;
   }
</style>
<div id=image> <img src=../img/mem1.png> </div>
<div id=section> <!--  아이디와 비밀번호를 입력 폼 -->
  <form method=post action=login_ok.jsp>
    <div> 로그인 </div>
    <div> </div>
    <div> 회원아이디 </div>
    <div> <input type=text> </div>
    <div> 비밀번호 </div>
    <div> <input type=password> </div>
    <div> <input type=submit value=로그인> </div>
    <div>
      회원로그인 안내

      회원아이디 및 비밀번호가 기억 안나실 때는 아이디/비밀번호 찾기를 이용하십시오.
    아직 회원이 아니시라면 회원으로 가입 후 이용해 주십시오. 
    </div>
    <div>
      <input type=button id=b1 value="아이디 비밀번호 찾기">
      <input type=button id=b2 value="회원 가입">
    </div>
    <div>
     메인으로 돌아가기
    </div>
  </form>
</div>
<%@ include file="../bottom.jsp" %>    









