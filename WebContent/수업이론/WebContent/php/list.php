<?
    // DB����  
   $hostname="localhost"; //��ǻ�� �ּ�(IP)
   $dbname="amudo"; //�����ͺ��̽��̸�
   $userid="root"; // ���̵�
   $pwd="apmsetup"; //��й�ȣ
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
   <caption> <h2> �Խ��� </h2> </caption>
   <tr height=30 align=center>
     <td> �̸� </td>
     <td> ���� </td>
     <td> ��ȸ�� </td>
     <td> �ۼ��� </td>
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
     <td colspan=4 align=right> <a href="write.php"> �۾��� </a> </td>
   </tr>
 </table>
   












