<?
    // DB연결  
   $hostname="localhost"; //컴퓨터 주소(IP)
   $dbname="amudo"; //데이터베이스이름
   $userid="root"; // 아이디
   $pwd="apmsetup"; //비밀번호
   $conn=mysql_connect($hostname,$userid,$pwd);  
   mysql_select_db($dbname,$conn);  
    
   $sql="select * from board";
   $result=mysql_query($sql,$conn);
   $num=mysql_affected_rows();
?>    
<!DOCTYPE html>
<html>
<head>
 
<title>Insert title here</title>
 
</head>
<body onload=search_sub()>
  <table align=center width=600 border=1 cellspacing=0>
   <caption> <h2> 게시판 </h2> </caption>
   <tr height=30 align=center>
     <td> 이름 </td>
     <td> 제목 </td>
     <td> 조회수 </td>
     <td> 작성일 </td>
   </tr>
   <?
     for($i=1;$i<=$num;$i++)
	 {
	   $row=mysql_fetch_object($result);
   ?>
   <tr height=20>
     <td align=center> <?=$row->name?> </td>
     <td> <?=$row->title?> </td>
     <td align=center> <?=$row->rnum?> </td>
     <td align=center> <?=$row->writeday?> </td>
   </tr>
  <?
    }
  ?>
   <tr>
     <td colspan=4 align=right> <a href="write.php"> 글쓰기 </a> </td>
   </tr>
 </table>
   












