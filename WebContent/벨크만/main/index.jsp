<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
min-width: 1200px;
height: 100%;
}
#wrap_contents {
height:100%;
position
}
body,html{
margin:0px;
width:100%;
height:100%;
}
nav{
width:100%;
height:100%;
float:left;
}
#left_import
{
width:300px;
height:100%;
background:blue;
}
.left_top{
height: 20%;
background:green;
}
#l_menuwrap{
padding:0px 55px;
height:100%;
}
.logo_anthony{
   padding-top:55px;
}
section
{
width:900px;
background:yellow;

}
footer{
width:900px;
height:250px;
background:orange;
}
img{
width:190px;
height:28px;
}
#right{
width:900px;
height:100%;
float:left;
background:gold;
}
</style>
<body>
<nav>
<div id=left_import>

</div></nav>
<div id=right></div>
<section> </section>
<jsp:include page="../nav.jsp" flush="false"/>




</body>
</html>