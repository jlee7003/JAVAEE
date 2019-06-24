<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    

<%@ include file="../main/top2.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script>
</script>
<style>
  #image {
    width:1200px;
    height:305px;
    margin:auto;
  }
  #section {
    width:1200px;
    height:300px;
    margin:auto;
    
  }
  
  #section > div
  {
  width:450px;
  height:80px;
  margin:auto;
    }
    #section > div:nth-child(1) {
    margin-top:50px;
    height:50px;
    font-weight:900;
    }
    #section > div:nth-child(2){
    font-size:12px;
    border:1px solid gray;
    display:flex;
    align-items:center;
    border-bottom:none;
    }
    #section > div:nth-child(3)
    {
    font-size:12px;
    border:1px solid gray;
    display:flex;
    align-items:center;
    justify-content:center;
    background:#dddddd;
    text-align:center;
    }
    #section > div:nth-child(4)
    {
    margin-top:20px;
    font-size:12px;
    text-align:center;
    }
    #section > input[type=password]  
    {
     width:90px;
     height:20px;
     border: 1px solid #dddddd;
    }  
       #section input[type=submit]  
    {
    width:40px;
    height:20px;
    background:red;
    color:white;
    border:none;
    }  
    #section a
    {
    text-decoration:none;
    color:black;
    }
</style>
</head>
<body>
 <div id=image> 
 <div id=section>
 
 <div>회원 비밀번호 확인</div>
 
 <div><div style=margin-left><b>비밀번호를 한번 더 확인해주세요.</b><br>
 회원님의 정보를 안전하게 보호하기 위해 확인 부탁드립니다.</div></div>
 <div><div><form method=post action=pwd_check_ok.jsp> 회원아이디    <b><%=session.getAttribute("userid") %> </b>   
  비밀번호 <input id=ppwwdd type=password name=pwd><input type=submit value=확인></form></div></div>
 <div><a href="pwd_check_ok.jsp" >메인으로 돌아가기</a></div>
  </div>
  </div>
  </body>
</html>
<%@ include file="../main/bottom2.jsp" %>    