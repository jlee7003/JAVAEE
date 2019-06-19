<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>의호's 펜션</title>
<style>
/*#member,#header,#move_img,#insa,#link,#footer
{
 한꺼번에 스타일 주는법
margin:auto;
}*/
body{
margin:0px;
}
#member/*1****************************************************************/
{ 
margin:auto;
width:1200px;
height:50px;
background:white;
display:flex;
justify-content:flex-end;
align-items:center;

}
#member > a
{
text-decoration: none;
color: black;
padding:10px;
font-size:12px;
}
  


#header/*2****************************************************************/
{
margin:auto;
width:1200px;
height:60px;
background:white;
}
#header #logo 
{
width:320px;
height:60px;
float:left;
display:flex;
align-items:center;
}
  #header #menu {
    width:880px;
    height:60px;
    float:right;
    display:flex;
    align-items:center;
  }
 
  #header #menu li {
    list-style-type:none;
    float:left;
    font-size:19px;
    font-weight:900;
    margin-left:80px;
  }
  
  /*조건에 따라 스타일 주는 방법
  
  
  @media ( max-width : 1300px) 
  {
   #header 
   {
   display: none;
   color:black;
   }
  
  }
  
  */
  


#move_img/*3****************************************************************/
{
margin:auto;
width:100%;
height:400px;

}
#move_img > img
{
margin:auto;
width:100%;
height:400px;

background-size:100% 100%;
}
#insa/*4****************************************************************/
{
margin:auto;
width:1200px;
height:200px;
background:#F4F4F4;
}
#box1
{
padding-top:30px;
width:1000px;
height:150px;
border: 1px solid black;
margin:auto;
display: flex;

}
#insa #box2
{
margin:0px;
width:33.5%;
height:150px;
border: 1px solid black;


}
#insa #box3
{
width:77.5%;
height:150px;
border: 1px solid black;
font-size:11px;


}

#insa #div
{
margin: 0px;
color:#9F9DA0

}

#link/*5****************************************************************/
{
margin:auto;
width:1200px;
height:300px;
background:blue;
}
#footer/*6****************************************************************/
{
margin:auto;
width:1200px;
height:100px;
background:purple;
}


</style>
</head>

<body>
 <div id=member> <!--1----------------------------------------------->
 <a href="">회원가입</a>
 <a href=""><b>로그인</b></a>
  <a href="">찾아오시는 길</a>
  </div>
 
 <div id=header> <!--2------------------------------------------------->
  
  <div id=logo> <img src=logo.PNG> </div>
    <div id=menu>
      <ul>
        <li> 프로방스펜션 </li>
        <li> 객실안내 </li>
        <li> 부대시설 </li>
        <li> 커뮤니티 </li>
        <li> 예약하기 </li>
      </ul>
    </div>
 
 
 </div>
 
 <div id=move_img> <!--3------------------------------------------------->
  <img src=move1.PNG>
  
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

   <div id=box3>
    <img src=welcome.PNG> <p>
					 		
	저희 펜션은 유럽 테마여행을 중심으로 하는 메타 프로방스 안에 위치한 유럽형 펜션입니다.<br>
	대숲 맑은 담양군의 주요 여행지와 함께 감성을 느낄 수 있는 프로방스 펜션에서 삶의 산소와 같은 휴식과 낭만을 즐기시길 바랍니다.<br>
         언제나 저희 프로방스 펜션을 이용해주시는 여러분을 위해서 최선을 다해서 모시겠습니다.
   </div>
   </div>
 </div>
 <div id=link><!--5------------------------------------------------->
    
    
 </div>
     
 <div id=footer><!--6-------------------------------------------------> 
     
     
 </div>
     
</body>
</html>