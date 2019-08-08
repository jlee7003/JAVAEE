<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ include file="top.jsp" %>
 <style>
 #pop{
  position:absolute;
     left:300px;
     top:200px;
     background:#C6FFFF;
     width:300px;
     height:300px;
     border:2px solid blue;
     border-radius:20px;
 }
#UDline,#UDline1,#UDline2,#UDline3,#UDline4{
width:300px;
height:60px;
text-align:center;
}
 #UDline{
 font-size:35px;
 text-align:center;
 font-weight:900;
 color:darkblue;
 }
  #UDline4 input{
 border:2px solid blue;
 border-radius:20px;
 background:#C6FFFF;
 text-align:center;
   width:60px;
   height:30px;
 }
 #UDline4{
  text-align:center;
}
#moving img{
width:100%;
height:500px;
}
.pension2
{

}

 
 }
 </style>
 <script>
 function imsi1()
 {
	 document.all.pop.style.visibility="hidden";
	 //document.all.pop.style.display="none";
 }
 function imsi2()
 {
	 
	  document.all.UDline1.innerHTML="이름  <input type=text name=name>";
	   document.all.UDline2.innerHTML="전화번호  <input type=text name=phone>";
	   document.all.UDline3.innerHTML="<input type=submit value=저장>"
 }
 </script>
 <div id=moving> <!--3------------------------------------------------->
  <img src=../img/pension1.PNG>
  
 </div>
 <div align=center class=pension2>
 <img src=../img/pension2.PNG>
</div>
   <div id=pop>
   <form method=post action=event_ok.jsp> 
<!--    form태그를 만들어주고 innerHTML로 태그를 넣어줘도 가능함 -->
<div id=UDline>여름 이벤트</div>
<div id=UDline1>기간: 2019년 6월 30일~2019년 8월 31일</div>
<div id=UDline2>내용: 전 숙박 고객에게 치킨 증정!</div>
<div id=UDline3></div>
<div id=UDline4>
<input type=button onclick=imsi2() value=신청> 
<input type=button onclick=imsi1() value=닫기></div>
</form>
</div> 



   </div>
 </div>
 <div id=link><!--5------------------------------------------------->
    <div id=Lbox>
    <img src=../img/back1.PNG>
    <div></div> 
    <div></div> 
    <div></div> 
    <div></div> 
    
    </div>
    
 </div>
     
  <%@ include file="bottom2.jsp" %>