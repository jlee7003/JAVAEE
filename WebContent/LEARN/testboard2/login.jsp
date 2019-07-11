<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
margin:0;

}
.header{
width:90%;
margin:auto;
margin-top:10px;
height:100px;
border: 1px solid black;
background-color: lightgray;
border-radius:10px;
display:flex;
}
.header .right{
height:100px;
width:900px;
display:flex;
margin-top:10px;
justify-content:flex-end;
align-items:center;
}
.header .left{
height:100px;
margin-top:10px;
margin-left:60px;
width:900px;
color:white;
font-weight:900;
textborder:1px solid black;
font-size:50px;
}
.header input{
height:30px;
}
.footer{

display:block;
text-align:right;
}
a{
text-decoration:none;

}
</style>
<body>
<div class=header>
<div class=left><a href="">EUIHO</a></div>
<div class=right>
<form method=post action="#">
아이디<input type=text>
비밀번호<input type=password>
<input type=submit value=LOGIN>
<div class=footer><a href="joinus.jsp">sign up</a></div>
</form><p>



</div>

</div>
</body>
</html>