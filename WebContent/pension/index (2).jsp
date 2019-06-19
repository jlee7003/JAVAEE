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
    background:blue;
  }
  #link { /* 5층 */
    width:1200px;
    height:300px;
    background:lightblue;
  }
  #footer { /* 6층 */
    width:1200px;
    height:100px;
    background:#aaaaaa;
  }
 </style>
</head>
<body>
  <div id=member> <!-- 1층 -->
    <a href=""> 회원가입 </a>
    <a href=""> 로그인 </a>
    <a href=""> 찾아오시는길 </a>
  </div>
  <div id=header> <!-- 2층 -->
    <div id=logo> <img src=logo (2).png> </div>
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
  <div id=move_img> <!-- 3층 -->

  </div>
  <div id=insa> <!-- 4층 -->
  
  </div>
  <div id=link> <!-- 5층 -->
  
  </div>
  <div id=footer> <!-- 6층 -->
  
  </div>
</body>
</html>










