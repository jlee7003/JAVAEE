<?
   // write_ok.php => ���� �Է°��� DB�� �������ִ� ����

   // DB����  
   $hostname="localhost"; //��ǻ�� �ּ�(IP)
   $dbname="amudo"; //�����ͺ��̽��̸�
   $userid="root"; // ���̵�
   $pwd="apmsetup"; //��й�ȣ
   $conn=mysql_connect($hostname,$userid,$pwd);  
   mysql_select_db($dbname,$conn);  
    
   $title=$_POST["title"];
   $content=$_POST["content"];
   $name=$_POST["name"];
   $age=$_POST["age"];
   $sung=$_POST["sung"];
   $pwd=$_POST["pwd"];
 
   $sql="insert into board(title, content, name, age, sung, pwd, rnum, writeday) values('$title','$content','$name',$age, $sung, '$pwd',0,now())"; 
   
   mysql_query($sql,$conn);
?>   
<script>
  location="list.php";
</script>