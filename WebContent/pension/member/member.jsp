<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../top.jsp" %>
<style>
#section{
width:1200px;
height:600px;
margin:auto;
background:#F4F4F4;
}
table
{
padding-top: 30px;
border: 0px solid gray;
}
td{

width:200px;
border-spacing: 10px;
border: 1px solid gray;
}
tr{
height:80px;
border: 0px solid gray;
}
#td{

width:300px;
border-spacing: 10px;
border: 1px solid gray;
}
input{
width:200px;

}


</style>
<div id=section> 
<form method=post action=member_ok.jsp> 
<table align=center border=0 cellspacing=1 cellpadding=1>
<tr>
<td>아이디</td>
<td id=td><input type=text name=userid></td>
</tr>
<tr>
<td>이름</td>
<td id=td><input type=text name=name></td>
</tr>
<tr>
<td>비밀번호</td>
<td id=td><input type=password name=pwd1></td>
</tr>
<tr>
<td>비밀번호 확인</td>
<td id=td><input type=password name=pwd2></td>
</tr>
<tr>
<td>이메일</td>
<td id=td><input type=text name=email></td>
</tr>
<tr>
<td colspan=2 align=center>
   <input type=submit value=회원가입>
</td>
</tr>

</table>
</form>
</div>

<%@ include file="../bottom.jsp" %>