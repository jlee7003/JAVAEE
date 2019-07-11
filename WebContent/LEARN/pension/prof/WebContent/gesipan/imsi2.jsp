<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <script>  // 스크립트, 태그내에 적는 방법
   function sel()
   {
	  var y="2014"; 
	  var n=2020-y;
	  document.pkc1.year.selectedIndex=n;
   }
 </script>
</head>
<body onload=sel()>
    <!-- select태그에 원하는 option태그가 나타내기 -->
    
    <form name=pkc1>
      태어난 해 
      <select name=year>
       <option> 선택 </option>
       <option> 2019 </option>
       <option> 2018 </option>
       <option> 2017 </option>
       <option> 2016 </option>
       <option> 2015 </option>
       <option> 2014 </option>
      </select>
    </form>
    <p><hr>
    <form name=pkc2>
      태어난 해 
      <select name=year>
       <option> 선택 </option>
       <option> 2019 </option>
       <option> 2018 </option>
       <option selected> 2017 </option>
       <option> 2016 </option>
       <option> 2015 </option>
       <option> 2014 </option>
      </select>
    </form>
</body>
</html>







