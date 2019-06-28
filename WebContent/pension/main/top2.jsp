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

    /*include-> 모든 파일을 바꿔줌
    
    */
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
#member > div{
color:red;
font-size: 12px;
}
#member span{
font-size: 12px;
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
height:500px;

}
#move_img > img
{
margin:auto;
width:100%;
height:500px;

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
border: 0px solid black;
margin:auto;
display: flex;

}
#insa #box2
{
margin:0px;
width:33.5%;
height:150px;
border: 0px solid black;


}
#insa #box3
{
width:77.5%;
height:150px;
border: 0px solid black;
font-size:11px;
}
#insa #Mbox
{
width:100%;
height:35px;
border: 0px solid black;
font-size:11px;
display: flex;

justify-content:flex-end;

}
#insa #Dbox
{
border: 1px solid black;
font-size:11px;
display:flex;
align-items:center;
justify-content:center;
width:80px;
height:35px;

}
#insa #Dbox:hover
{
border: 1px solid #F4F4F4;

}

#insa #div
{
margin: 0px;
color:#9F9DA0

}
a{
text-decoration: none;
color: black;
}

#link/*5****************************************************************/
{
margin:auto;
width:1200px;
height:400px;
background:white;
align-items:center;
display: flex;
}

#link #Lbox
{
margin:auto;
width:1200px;
height:320px;
background:skyblue;
align-items:center;
display: flex;

}
#link img
{

width:1200px;
height:320px;


}
#footer/*6****************************************************************/
{
margin:auto;
width:100%;
height:200px;
background:purple;
}
#footer img/*6****************************************************************/
{
width:100%;
height:320px;

}
#pic{
width:100%;
height:200px;
}
#pic img{
width:100%;
height:200px;
}
  #link img:hover {
    opacity:0.6;
  }

</style>
</head>

<body>
 <div id=member> <!--1----------------------------------------------->

 <%
 if(session.getAttribute("userid")==null)//세션변수가 없다면
 {
 %>
 <a href="../member/member.jsp">회원가입</a>
 <a href="../login/login.jsp"><b>로그인</b></a>
  <a href="">찾아오시는 길</a>
<%}
 else
 {
 %>
 
 <span><%= session.getAttribute("name") %>님 환영합니다!</span> <a href="../member/member.jsp">정보수정</a>
 <a href="../login/logout.jsp"><b>로그아웃</b></a>
 <a href="">찾아오시는 길</a>
 <%
 }
 %>

 </div>
 <div id=header> <!--2------------------------------------------------->
  
  <div id=logo> <img src=../img/logo.PNG> </div>
    <div id=menu>
      <ul>
        <li> 프로방스펜션 </li>
        <li> 객실안내 </li>
        <li> 부대시설 </li>
        <li> <a href="../notice/noticelist.jsp">커뮤니티</a> </li>
        <li> 예약하기 </li>
      </ul>
    </div>
 
 
 </div>
 <div id=pic>
 <img src=../img/topb.PNG>
 </div>
