<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../top.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
 
 #section {
   width:1200px;
   height:400px;
   margin:auto;
 }
 #section > div{
   width:450px;
   height:80px;
   margin:auto;
 }
 #section > div:nth-child(1) {
   margin-top:50px;
   font-weight:900;
   display:flex;
   align-items:center;
 }
 #section > div:nth-child(2) {
   font-size:12px;
   border:1px solid #dddddd;
   display:flex;
   align-items:center;
 }
 #section > div:nth-child(3) {
   font-size:12px;
   border:1px solid #dddddd;
   border-top:none;
   background:#eeeeee;
   display:flex;
   align-items:center;
   justify-content:center;
 }
 #section > div:nth-child(4) {
   font-size:12px;
   display:flex;
   align-items:center;
   justify-content:center; 
 }
 #section input[type=password] {
   width:90px;
   height:20px;
   border:1px solid #dddddd;
 } 
  #section input[type=submit] {
   width:40px;
   height:23px;
   background:red;
   color:white;
   border:none;
 } 
 </style>
</head>
<body> 
 
 
  <div id=section> <!-- 비밀번호확인을 한번 더 -->
    <div> 회원 비밀번호 확인 </div>

    <div>
      <div style="margin-left:20px;"> <b>비밀번호를 한번 더 입력해주세요.</b> <br>
    회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더 확인합니다
      </div>
    </div>
    <div>
       <div>
        <form method=post action=pwd_check_ok.jsp>
       회원아이디  <b><%=session.getAttribute("userid") %></b>
         비밀번호 <input type=password name=pwd><input type=submit value=확인>
        </form>
       </div>
    </div>
    <div>
    메인으로 돌아가기
    </div>
  </div>
</body>
</html>
<%@ include file="../bottom.jsp" %>











