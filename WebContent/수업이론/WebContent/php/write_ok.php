<?
   // write_ok.php => 폼의 입력값을 DB에 저장해주는 역할

   // DB연결  
   $hostname="localhost"; //컴퓨터 주소(IP)
   $dbname="amudo"; //데이터베이스이름
   $userid="root"; // 아이디
   $pwd="apmsetup"; //비밀번호
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