<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../main/top2.jsp"%>
<style>
#section{
width:1200px;
height:500px;
margin:auto;
}
#section div{
text-align:center;
}
#section input[type=text]{
width:270px;
height:27px;

}
table{
border-radius:5px;

}


</style>

<script>
//사용할 xml 마다 이름을 새로 붙혀주어야함
var xml2=new XMLHttpRequest();
function pwd_search()
{
	 userid=encodeURIComponent(document.pwd.userid.value);  // id_search.jsp에 보낼 이름
	 name=encodeURIComponent(document.pwd.name.value);  // id_search.jsp에 보낼 이름
	 email=encodeURIComponent(document.pwd.email.value); // 이메일
	 url="pwd_search.jsp?name="+name+"&email="+email+"&userid="+userid;
	 xml2.open("get",url); // open("전송방식",주소(url)) //사용할때 마다 xml의 이름을 다르게 해주어야함
	 xml2.send(); // 호출
}
xml2.onreadystatechange=function() // 0~4까지의 값이 발생
{
	 if(xml2.readyState==4) // 수신완료
		 searchpwd.innerHTML=xml2.responseText.trim();
}

//-----------------------------------------------------------------

var xml=new XMLHttpRequest(); 
function id_search()
{
	 name=encodeURIComponent(document.id.name.value);  // id_search.jsp에 보낼 이름 값
	 email=encodeURIComponent(document.id.email.value); //  id_search.jsp에 보낼 이메일 값
	 url="id_search.jsp?name="+name+"&email="+email;//변수를 보낼 주소 입력하는 곳
	 xml.open("get",url); // open("전송방식을 get으로",주소(url))
	 xml.send(); // 호출
}
xml.onreadystatechange=function() // 0~4까지의 값이 발생// readystatechange->0~4까지의 값이 발생함 ,레코드가 없다면 0

/* onreadystatechange 프로퍼티
onreadystatechange 프로퍼티는 XMLHttpRequest 객체의 readyState 프로퍼티 값이 변할 때마다 자동으로 호출되는 함수를 설정합니다.

 

이 함수는 서버에서 응답이 도착할 때까지 readyState 프로퍼티 값의 변화에 따라 총 5번 호출됩니다.

이 프로퍼티를 이용하면 서버에 요청한 데이터가 존재하고, 서버로부터 응답이 도착하는 순간을 특정할 수 있습니다. */
{
	 if(xml.readyState==4) // 4일때 수신완료
			 searchid.innerHTML=xml.responseText.trim();
	 //문자열 좌우에서 공백을 제거하는 함수가 trim() 함수 입니다. 

	 //xml.responseText-> id_search.jsp에서의 outprint값
	 
/* 	 1. UNSENT (숫자 0) : XMLHttpRequest 객체가 생성됨.

	 2. OPENED (숫자 1) : open() 메소드가 성공적으로 실행됨.

	 3. HEADERS_RECEIVED (숫자 2) : 모든 요청에 대한 응답이 도착함.

	 4. LOADING (숫자 3) : 요청한 데이터를 처리 중임.

	 5. DONE (숫자 4) : 요청한 데이터의 처리가 완료되어 응답할 준비가 완료됨. 
	 
--Ajax

Ajax는 웹 페이지 전체를 다시 로딩하지 않고도, 웹 페이지의 일부분만을 갱신할 수 있게 해줍니다.
즉 Ajax를 이용하면 백그라운드 영역에서 서버와 통신하여, 그 결과를 웹 페이지의 일부분에만 표시할 수 있습니다.
	 
	 
	 
	  */
}
</script>


<div id=section> <!-- 아이디,비밀번호 찾기 search.jsp -->
   <table align=center width=450 border=1>
     <caption> <h3>아이디 ＊ 비밀번호 찾기 </h3> </caption>
    <form name=id method=post action=id_search.jsp>
     <tr>
       <td colspan=2> 아이디 찾기 <span id=searchid></span></td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <input type=text name=name> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type=text name=email> </td>
     </tr>
     <tr>
       <td colspan=2> <input type=button onclick=id_search() value=아이디찾기> </td>
     </tr>
    </form>
     <!-- 비밀번호찾기 -->
    <form name=pwd method=post action=pwd_search.jsp>
     <tr>
       <td colspan=2> 비밀번호 찾기 <span id=searchpwd></span> </td> 
     </tr>
     <tr>
       <td> 아이디 </td>
       <td> <input type=text name=userid> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <input type=text name=name> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type=text name=email> </td>
     </tr>
     <tr>
       <td colspan=2> <input type=button onclick=pwd_search() value= 비밀번호찾기></td>
     </tr>
    </form>
   </table>   
</div>

<%@ include file="../main/bottom.jsp" %>    






