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

//아이디 중복체크 (AJAX)
var useridChk = new XMLHttpRequest();

function useridCheck(form) { // form <= this.form
		// 사용자 입력값을 변수에 저장
		var userid = encodeURIComponent(form.userid.value);

		// userid 존재유무 확인을 위해 JSP로 값 전송		
		url = "check_userid.jsp?userid=" + userid;
		
		// 전송방식 : get, 전송지 : url
		useridChk.open("get", url);
		
		// 전송지에 리턴값 요청 (JSP 값 호출)
		useridChk.send();
}

// * ready state (JSP → Javascript 값수신 상태) 변동시 함수 실행
useridChk.onreadystatechange = function() {
	
	// 수신완료 (4단계)
	if(useridChk.readyState == 4) {
		var idk = document.getElementById("useridx");
		
		// 아이디 존재하는 경우
		if(useridChk.responseText.trim() == "yes") { // JSP 리턴값
			idk.innerHTML = "<b style='color:red'> 사용 불가 아이디</b>";
		}
		// 아이디 존재하지 않는 경우
		else {
			idk.innerHTML = "<b style='color:blue'> 사용 가능 아이디</b>";
		}
	}
}

// * 비밀번호 일치여부 체크
function passwordCheck(form) {
	var pwd = form.password.value;
	var confirmPwd = form.confirmPassword.value;
	if(pwd == confirmPwd) {
		confirmPasswordx.innerHTML = "<b style='color: blue'>비밀번호 일치</b>";
	}
	else {
		confirmPasswordx.innerHTML = "<b style='color: red'>비밀번호 불일치</b>";
	}
}

function passwordCheckFocus(form) {
	if(form.confirmPassword.value == "") {
		form.confirmPassword.focus();
	}
}

// this : 해당 태그
// this.form : 해당 태그가 속한 form 태그
// this.value : 해당 태그의 value





</script>

<div id=section> 
<form method=post action=member_ok.jsp onsubmit="return check(this)"> 
<table align=center border=0 cellspacing=5 cellpadding=5>
<table>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="userid" placeholder="anthony"></td>
						<td><input type="button" onclick="useridCheck(this.form)" value="아이디 중복확인"></td>
						<td id="useridx"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" placeholder="안토니"></td>
						<td></td>
						<td id="namex"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="password"
							placeholder="숫자/영문 혼합" onblur="passwordCheckFocus(this.form)"></td>
						<td></td>
						<td id="passwordx"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="confirmPassword"
							placeholder="숫자/영문 혼합" onblur="passwordCheck(this.form)"></td>
						<td></td>
						<td id="confirmPasswordx"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email"
							placeholder="anthony@gmail.com"></td>
						<td></td>
						<td id="emailx"></td>
					</tr>
					<tr>
						<td colspan="4" id="submitButtonBox"><input type="submit" value="가입하기"></td>
					</tr>

</table>
</form>
</div>

<%@ include file="../main/bottom.jsp" %>
