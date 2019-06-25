<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#section{
height:260px;
width:400px;
margin:auto;
}
div,input {
  background: skyblue;
  border: 3px solid pink;
  font-size:15px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:10px;
  border-radius: 5px;
}
table {
padding-top:200px;
border: 0px solid black;
margin: auto;

}
body{
background-color: white;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}
#content{

height:300px;
}
#idid{
text-align:center;
background:darkgray;
}
</style>
<script>
function imsi()
</script>
</head>
<body>

  <form method=post action=notice_write_ok.jsp>
  <div id=section>
    제목 <input type=text name=title> <p>
    내용 <textarea name=content cols=40 rows=7></textarea> <p>
   <input type=submit value=저장>
  </div>
  </form>
</body>
</html>