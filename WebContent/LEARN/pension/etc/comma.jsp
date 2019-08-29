<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
//정석
function comma(price)
{
	price=price.replace(/\B(?=(\d{3})+(?!\d))/g,",");//정규식
	return price;
}
var tt=comma(1000000+""); //문자열로 해주어야함
alert(tt);

function imsi(price)
{
	n=price.length;
	var num="";
	for(i=0;i<n;i++)
		{
		if(i%3==0&&i!=0)
			num=","+num;
		num=price.substr(price.length-1,1)+num;
		price=price.substring(0,price.length-1);
		}
	return num;
}
</script>
</head>
<body>

</body>
</html>