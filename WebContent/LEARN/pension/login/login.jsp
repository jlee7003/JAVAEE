<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../main/top2.jsp"%>
<style>
#Logmain {
	border: 0px solid black;
	width: 100%;
	height: 800px;
	display: flex;
	justify-content: center;
}

#logbox {
	width: 400px;
	height: 570px;
	border: 1px solid #d4e2e1;
	box-shadow: 3px 3px 7px 1px #bbb;
	margin-top: 100px;
}

#logbox1 {
	width: 320px;
	height: 85px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 24px;
	border-bottom: 1px solid #dadada;
	margin: auto;
}

#logbox2 {
	margin-top: 30px;
	width: 400px;
	height: 400px;
	border: 0px solid black;
}

#logbox2 #login1 {
	width: 400px;
	height: 250px;
	color: #777;
	margin-left: 40px;
	font-size: 14px;
	border: 0px solid black;
}

#logbox2 #login1 input[type=submit] {
	width: 320px;
	height: 38px;
	color: white;
	font-size: 16px;
	border-radius: 5px;
	background: #3c95d5;
	border-bottom: 3px solid #2d81c9;
}

#logbox2 #login1 input[type=submit]:focus {
	outline: none;
}

#logbox2 #login1 #input {
	width: 320px;
	height: 30px;
	background-color: #f5f5f5 !important;
	border: 1px solid #ddd;
	margin-bottom: 7px;
	margin-top: 7px;
}

#logbox2 #login1 #input:focus {
	outline: none;
}

#logbox2 #login2 {
	width: 400px;
	height: 150px;
	border-bottom: 1px solid #cfded8;
	border-top: 1px solid #cfded8;
	background: #f5f6fa;
}

#logbox2 #login2 #login2in1 {
	margin-left: 20px;
	width: 360px;
	font-size: 13px;
	height: 100px;
	border: 0px solid black;
}

#logbox2 #login2 #login2in2 {
	margin-left: 20px;
	width: 400px;
	height: 40px;
	border: 0px solid black;
}

#logbox2 #login2 #login2in2 button {
	width: 170px;
	height: 30px;
}

#logbox2 #login2 #login2in2 button:focus {
	outline: none;
}

#logbox2 #login2 #login2in2 #bb2 {
	border: 1px solid #ccc;
	background: #fafafa;
	text-decoration: none;
	color: #000;
}

#logbox2 #login2 #login2in2 #bb2 a {
	text-decoration: none;
	color: black;
}

#logbox2 #login2 #login2in2 #bb1 {
	border: 1px solid #3b3c3f;
	background: #4b545e;
	color: #fff;
}

#logbox3 {
	width: 400px;
	height: 53px;
	border: 0px solid black;
	display: flex;
	justify-content: center;
	align-items: center;
}

#logbox3 a {
	text-decoration: none;
	color: black;
	font-size: 13px;
}

#error {
	font-size: 13px;
	color: red;
/* 	//get 방식으로 변수값을 보낼 수가 있음 */
}
</style>
<form method=post action=login_oksession.jsp>
	<div id=Logmain>

		<div id=logbox>
			<div id=logbox1>
				<b>로그인</b>
			</div>
			<div id=logbox2>
				<div id=login1>
					회원아이디 <br> <input id=input type=text name=userid><br>
					비밀번호 <br> <input id=input type=password name=pwd><br>
					<%
						if(request.getParameter("err") != null) 
						//null 값이 오기 때문에 equals를 사용하지 못함
						//비밀번호가 맞다면 null이 오기 떄문에 null이 아닐 경우를 조건식으로 사용
						{
							%>
					<span id=error>아이디 또는 비밀번호 오류입니다.</span>
					<%
						}
					%>
					<input type=submit value=로그인> <br> <input
						type=checkbox> 자동로그인
				</div>
				<div id=login2>
					<div id=login2in1>
						<b>회원로그인 안내</b>
						<p>

							회원아이디 및 비밀번호가 기억 안나실 때는 아이디/비밀번호 찾기를 이용하십시오.<br> 아직 회원이
							아니시라면 회원으로 가입 후 이용해 주십시오.
					</div>
					<div id=login2in2>
					<input type=button id=bb1 onclick=search() value="아이디/비밀번호 찾기">
						<button id=bb2>
							<a href="../member/member.jsp">회원가입</a>
						</button>
					</div>
				</div>
			</div>
			<div id=logbox3>
				<a href="../main/index.jsp">메인으로 가기</a>
			</div>
<script>
function search()
{//호출되면 search.jsp로 이동
 location="search.jsp"; /* 브라우저의 주소 입력칸 */
}
</script>

		</div>

	</div>
</form>
<%@ include file="../main/bottom.jsp"%>