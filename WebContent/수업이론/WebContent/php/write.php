 
<!DOCTYPE html>
<html>
<head>
 
<title>Insert title here</title>
</head>
<body>
 
 <form method=post action=write_ok.php> 
   제목 <input type=text name=title size=50> <p>
   내용 <textarea cols=50 rows=6 name=content></textarea> <p>
   작성자 <input type=text name=name size=8> <p>
   연령 <select name=age>
        <option value=0> 10대 </option>
        <option value=1> 20대 </option>
        <option value=2> 30대 </option>
        <option value=3> 40대 </option>
        <option value=4> 50대 </option>
      </select> <p>
      성별 <input type=radio name=sung value=0>남자
        <input type=radio name=sung value=1>여자 <p>
      비밀번호 <input type=password name=pwd> <p>
      <input type=submit value=글작성>
 
 </form>
</body>
</html>











