<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!--  select태그에 원하는 옵션태그가 나타나기 -->
<script>
function sel()
{
  var="2018";
  
  document.leh.year.selectedindex=4;
}
</script>
<body onload=sel()>
 <form name=leh>
 태어난해
 <select name=year>
  <option>선택</option>
  <option>2019</option>
  <option>2018</option>
  <option >2017</option>
  <option>2016</option>
  <option>2015</option>
  <option>2014</option>
  <option>2013</option>
 <select>
 </form>
 
 
  <form name=leh2>
 태어난해
 <select name=year>
  <option>선택</option>
  <option>2019</option>
  <option>2018</option>
  <option selected>2017</option>
  <option>2016</option>
  <option>2015</option>
  <option>2014</option>
  <option>2013</option>
 <select>
 </form>
 </body>
</html>