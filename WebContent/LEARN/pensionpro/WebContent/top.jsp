<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <title>우리의 펜션</title>
 <style>
  body {margin:0}
  #member, #header, #move_img, #insa, #link, #footer {
    margin:auto;
  }
  #member { /* 1층 */
    width:1200px;
    height:50px;
    background:white;
    display:flex;
    justify-content:flex-end;
    align-items:center;
  }
  #member > a {
    color:black;
    text-decoration:none;
    margin-left:20px;
  }
  #header { /* 2층 */
    width:1200px;
    height:60px;
   }
  #header #logo {
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
  #move_img { /* 3층 */
    width:1200px;
    height:300px;
    background:yellow;
  }
  #insa { /* 4층 */
    width:1200px;
    height:200px;
  }
  #insa #left {
    width:340px;
    height:200px;
    color:gray;
    font-size:30px;
    font-weight:900;
    float:left;
    padding-left:15px;
    line-height:14px;
  }
  #insa #left p:last-child {
    color:black;
  }
  #insa #right {
    width:840px;
    height:200px;
    float:right;
    line-height:7px;
    font-size:13px;
  }
  #insa #right span {
    display:inline-block;
    width:80px;
    height:35px;
    border:1px solid black;
    display:flex;
    justify-content:center;
    align-items:center;
  }
  #insa #right span:hover {
    border-color:white;
  }
  #insa #right p:first-child {
    height:30px;
  }
  #insa #right p:last-child {
    display:flex;
    justify-content:flex-end;
    padding-right:30px;
  }
  #link  { /* 5층 */
    width:1200px;
    height:470px;
 
  }
  #link td:first-child {
    padding-left:0px;
  }
  #link td {
    padding:12px;
  }
  #link img:hover {
    opacity:0.6;
  }
  #footer { /* 6층 */
    width:1200px;
    height:130px;
    background:#1f2330;
    color:#aaaaaa;
    line-height:8px;
    padding-top:20px;
    font-size:14px;
  }
  #footer p {
    margin-left:10px;
  }
  #footer p:last-child {
    margin-top:30px;
  }
   #image {
   width:1200px;
   height:160px;
   margin:auto;
 }
 </style>
</head>
<body> 
  <div id=member> <!-- 1층 -->
  <%
    if(session.getAttribute("userid")==null)
    {
  %>
    <a href="../member/member.jsp"> 회원가입 </a>
    <a href="../member/login.jsp"> 로그인 </a>
    <a href=""> 찾아오시는길 </a>
  <%
    }
    else
    {
  %>
    <a href="../member/pwd_check.jsp"> 정보수정 </a>
    <a href="../member/logout.jsp"> 로그아웃 </a>
    <a href=""> 찾아오시는길 </a>
  <%
    }
  %>
  </div>
  <div id=header> <!-- 2층 -->
    <div id=logo> <a href="../main/index.jsp"> <img src=../img/logo.png> </a></div>
    <div id=menu>
      <ul>
        <li> 프로방스펜션 </li>
        <li> 객실안내 </li>
        <li> 부대시설 </li>
        <li> <a href="../gong/gong_list.jsp"> 커뮤니티 </a></li>
        <li> <a href="../reserve/reserve2.jsp"> 예약하기 </a></li>
      </ul>
    </div>
  </div>
  <div id=image> <img src=../img/mem1.png> </div> 
  
  
  
  
  
  
  
  
  
  
  
  
   