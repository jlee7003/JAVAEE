<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ include file="../top.jsp" %>
<style>
 #section {
   width:1200px;
   height:400px;
   margin:auto;
   font-size:13px;
 }
 #section input[type=text] {
  width:270px;
  height:27px;
 }
 #section input[type=button] {  
     width:174px;
     height:31px;
     background:blue;
     border:1px solid blue;
     color:white;
   }
 #section td {
  border:none;
 }
</style>
<script>
 // 아이디 찾기
 var xml=new XMLHttpRequest(); // 객체생성
 
 function id_search()
 {
	 name=encodeURIComponent(document.id.name.value);  // id_search.jsp에 보낼 이름
	 email=encodeURIComponent(document.id.email.value); // 이메일
	 url="id_search.jsp?name="+name+"&email="+email;
	 xml.open("get",url); // open("전송방식",주소(url))
	 xml.send(); // 호출
 }
 xml.onreadystatechange=function() // readyState : 0~4까지의 값이 발생
 {
	 if(xml.readyState==4) // 수신완료
		 searchid.innerHTML=xml.responseText.trim();
 }                         // xml.responseText => id_search.jsp에서 
                           //                     out.print() 값
 // 아이디 찾기 끝
 
 // 비밀번호 찾기                           
var xml2=new XMLHttpRequest(); // 객체생성
 
 function pwd_search()
 {
	 userid=encodeURIComponent(document.pwd.userid.value);
	 name=encodeURIComponent(document.pwd.name.value);  // id_search.jsp에 보낼 이름
	 email=encodeURIComponent(document.pwd.email.value); // 이메일
	 url="pwd_search.jsp?userid="+userid+"&name="+name+"&email="+email;
	 xml2.open("get",url); // open("전송방식",주소(url))
	 xml2.send(); // 호출
 }
 xml2.onreadystatechange=function() // readyState : 0~4까지의 값이 발생
 {
	 if(xml2.readyState==4) // 수신완료
		 searchid2.innerHTML=xml2.responseText.trim();
 }        
 // 비밀번호 찾기 끝
</script>
<div id=section> <!-- 아이디,비밀번호 찾기 search.jsp -->
   <table align=center width=380 border=1>
     <caption> <h3>아이디 ＊ 비밀번호 찾기 </h3> </caption>
    <form name=id method=post action=id_search.jsp>
     <tr>
       <td> 아이디 찾기 </td>
       <td> <span id=searchid></span></td>
     </tr>
     <tr>
       <td width=100> 이름 </td>
       <td> <input type=text name=name> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type=text name=email> </td>
     </tr>
     <tr>
       <td colspan=2 align=center> <input type=button onclick=id_search() value=아이디찾기> </td>
     </tr>
    </form>
     <tr>
       <td colspan=2> <hr> </td>
     </tr> 
     <!-- 비밀번호찾기 -->
    <form name=pwd method=post action=pwd_search.jsp>
     <tr>
       <td> 비밀번호 찾기 </td>
       <td> <span id=searchid2></span> </td>
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
       <td colspan=2 align=center> <input type=button onclick=pwd_search() value=비밀번호찾기> </td>
     </tr>
    </form>
   </table>   
</div>

<%@ include file="../bottom.jsp" %>    









