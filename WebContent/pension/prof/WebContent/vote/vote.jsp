<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <form method=post action=vote_ok.jsp>
   <table width=300>
     <caption> <h3>당신이 좋아하는 안주는 ? </h3></caption> 
     <tr>
      <td> <input type=radio name=anju value=1> </td>
      <td> 생선회 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=2> </td>
      <td> 소곱창 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=3> </td>
      <td> 두부김치 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=4> </td>
      <td> 양꼬치 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=5> </td>
      <td> 생선초밥 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=6> </td>
      <td> 감자탕 </td>
     </tr>
     <tr>
      <td> <input type=radio name=anju value=7> </td>
      <td> 춘봉족발 </td>
     </tr>
     <tr align=center>
      <td colspan=2> <input type=submit value=투표> </td>
     </tr>
   </table>
  </form>
</body>
</html>