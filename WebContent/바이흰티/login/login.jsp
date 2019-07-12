<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/indexside.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 #footer div{

 }
 #footer{
  width:75%;
  margin:auto;
  align:center;
  }
  .logbox{
  width:45%;
  margin:auto;
  border:1px solid black;
  height:400px;
  }
  .logbox .btn input[type=button]{
  width:100px;
  height:70px;
  color:white;
  background-color:black;
  border:none;
   margin:10px 0px;
  }
  .idpw{
  width:70%;
  margin:10px 0px;
  
  }
  .logbox input
  {
  height:2em;
  border:none;
  }
 
  .btn{
width:10em;
  }

  .log{
  padding:20px;
  }
  .log2{
  width:80%;
  height:50px;
  border-bottom:1px solid #e9e9e9;;
  }
  .log2 input[type=button]{
  background-color:white;  
  border:1px solid black;
  width:49%;
  }
  .log3{
  font-size:12px;
  }
   
  .log3 input[type=button]{
  margin-top:20px;
  background-color:white;  
  border:1px solid black;
  width :80%;
  height:3em;
  }
  
  .idcheck{
  display:flex;
  margin:1px 0px;
  justify-content:center;
  align-items:center;
  margin-right:35px;
    }
</style>
<body>
<div id=footer >
<div class=void>
</div>
<form method=post action="login_ok.jsp">
<div class=logbox align=center>
 <div class=log>LOGIN</div>
 <div class=flex>
 <div class=idpw>
ID <input type=text name=userid><p>
PW <input type=password name=pwd>
<div align=left class=check>
<div class=idcheck>
<input type=checkbox> 아이디저장 보안접속
</div>
</div>
  </div>
 <div class=btn>
 <input type=button value=LOGIN>
</div>

 </div>
 <div class=log2>
<input type=button value=아이디찾기>
<input type=button value=비밀번호찾기>
</div>
<div class=log3>
JOIN<p>
 회원가입을 하시면 다양하고 특별한 혜택이 준비되어 있습니다.
<a href="../join/join.jsp"><input type=button value=회원가입></a>

</div>

</div>
</form>
</div>
</body>
</html>