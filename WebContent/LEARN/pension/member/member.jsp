<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../main/top2.jsp" %>
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

width:150px;
border-spacing: 10px;
border: 1px solid gray;
border: 1px solid #d4e2e1;
box-shadow: 3px 3px 3px 1px #bbb;
}
tr{
height:80px;
border: 0px solid gray;
}
#td{

width:500px;
border-spacing: 10px;
border: 0px solid gray;
}
input{
width:200px;

}


</style>
<script>
function check(form)
{
	 if(form.userid.value=="")
	 {
      document.all.idid.innerHTML="<b style='color:#828282'>아이디를 입력해주세요</b>";
       form.userid.focus();
       return false;
	 }
	 else if(form.userid.value.length<=7)
		 {
		 document.all.idid.innerHTML="<b style='color:#828282'>아이디를 8자 이상으로 만들어주세요</b>";
	       form.userid.focus();
	       return false;
		 }
		 else if(form.name.value=="")
			  {
			 document.all.namein.innerHTML="<b style='color:#828282'>이름을 입력해주세요</b>";
			     form.name.focus();
			     return false;
			  }
		      else if(form.pwd1.value=="")
		    	   {
		    	  document.all.pwd1in.innerHTML="<b style='color:#828282'>비밀번호를 입력해주세요</b>";
		    	      form.pwd1.focus();
		    	      return false;
		    	   }
		           else if(form.pwd1.value != form.pwd2.value)
		        	    {
		        	   document.all.pwd2in.innerHTML="<b style='color:#828282'>비밀번호가 같지 않습니다.</b>";
		        	       form.pwd1.value="";
		        	       form.pwd2.value="";
		        	       form.pwd1.focus();
		        	       return false;
		        	    }
		                else if(form.email.value=="")
		                	 {
		                	document.all.emailin.innerHTML="<b style='color:#828282'>이메일을 입력해주세요</b>";
		                	    form.email.focus();
		                	    return false;
		                	 }
		                     else
		                    	return true;
}

</script>

<div id=section> 
<form method=post action=member_ok.jsp onsubmit="return check(this)"> 
<table align=center border=0 cellspacing=5 cellpadding=5>
<tr>
<td>아이디</td>
<td id=td><input type=text name=userid>&nbsp;<span id=idid></span></td>
</tr>
<tr>
<td>이름</td>
<td id=td><input type=text name=name><span id=namein></span></td>
</tr>
<tr>
<td>비밀번호</td>
<td id=td><input type=password name=pwd1><span id=pwd1in></span></td>
</tr>
<tr>
<td>비밀번호 확인</td>
<td id=td><input type=password name=pwd2><span id=pwd2in></span></td>
</tr>
<tr>
<td>이메일</td>
<td id=td><input type=text name=email><span id=emailin></span></td>
</tr>
<tr>
<td colspan=2 align=center>
   <input type=submit value=회원가입>
</td>
</tr>

</table>
</form>
</div>

<%@ include file="../main/bottom.jsp" %>
