<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
  function imsi(n)
  {
	  cc.innerHTML="";
	  if(n==0)
	  {
		  aa.style.display="table-row";
		  bb.style.display="none";
		  cc.innerHTML=dd.innerHTML;
	  }
      else if(n==1)
      {
    	  bb.style.display="table-row";
    	  aa.style.display="none";
    	  cc.innerHTML=dd.innerHTML;
      }	  
      else 
    	  cc.innerHTML=dd.innerHTML;
		  
  }
 </script>
</head>
<body id=dd>
   <button onclick=imsi(0)>1</button>
   <button onclick=imsi(1)>2</button>
   <button onclick=imsi(3)>3</button>
   <table border=1 width=400>
     <tr>
       <td> 하하하 </td>
       <td> 호호호 </td>
     </tr>
     <tr id=aa>
       <td> 하하하1 </td>
       <td> 호호호1 </td>
     </tr>
      <tr id=bb style="display:none">
       <td> 하하하2 </td>
       <td> 호호호2 </td>
     </tr>
   </table>
   <xmp id=cc>
   
   </xmp>
</body>
</html>