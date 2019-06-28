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
width:100%
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
  <img src=../img/move1.PNG>
  
 </div>
 
 <div id=insa><!--4------------------------------------------------->
   <div id=box1>
   
   <div id=box2>
   <h2>
   <div id=div>
      Welcome,<br>
   Damyang Provence <br>  </div>
   <div id=div2>Pension</div>
      </h2>
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




   <div id=box3>
    <img src=../img/welcome.PNG> <p>
					 		
	저희 펜션은 유럽 테마여행을 중심으로 하는 메타 프로방스 안에 위치한 유럽형 펜션입니다.<br>
	대숲 맑은 담양군의 주요 여행지와 함께 감성을 느낄 수 있는 프로방스 펜션에서 삶의 산소와 같은 휴식과 낭만을 즐기시길 바랍니다.<br>
         언제나 저희 프로방스 펜션을 이용해주시는 여러분을 위해서 최선을 다해서 모시겠습니다.
        <div id=Mbox>
    <div id=Dbox>Detail View</div>
    </div> 
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