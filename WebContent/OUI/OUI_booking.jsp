<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel= "stylesheet" type="text/css" href="OUI_booking.css">
<script>
function active1()
{
	document.all.body.style.backgroundColor="rgba(0,0,0,.6)";
	document.all.body.style.opacity="1";
	document.all.opacity.style.opacity="1";
	document.all.opacity.style.color="pink";
}
</script>
<script src="https://code.jquery.com/jquery-latest.js"></script> 
    <script>
    function wrapWindowByMask(){
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  

        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $('#mask').css({'width':maskWidth,'height':maskHeight});  

        //애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
        $('#mask').fadeIn(700);      
        $('#mask').fadeTo("slow",0.4);    

        //윈도우 같은 거 띄운다.
        $('.window').show();
    }

    $(document).ready(function(){
        //검은 막 띄우기
        $('.openMask').click(function(e){
            e.preventDefault();
            wrapWindowByMask();
        });

        //닫기 버튼을 눌렀을 때
        $('.window .close').click(function (e) {  
            //링크 기본동작은 작동하지 않도록 한다.
            e.preventDefault();  
            $('#mask, .window').hide();  
        });       

        //검은 막을 눌렀을 때
        $('#mask').click(function () {  
            $(this).hide();  
            $('.window').hide();  
        });      
    });
    </script>
</head>
<body id=body>
	<div class=book_body>
		<form method=post action="#" name=bok>
			<div id=jumbotron>
				<div>
					Access your <b>tickets</b>,<br> your <b>card</b> or your <b>subscription</b>
				</div>
			</div>
			<div class=center>
				<div id=left>
					<div id=top>Reference number (example: ABC123)</div>
					<div id=bottom onclick="active1()" >
										<div id="mask"></div>
    <div class="window">
        
    </div>
    <a href="#" class="openMask">Where do I find my reference number?</a>
					</div>
				</div>

				<div id=right>
					<div id=top>Last name used for the order</div>
					<div id=bottom>I don’t have the order name</div>
				</div>
			</div>
			<div id=book_button >
			<input id=opacity type=submit onclick=active() value="Consult my order">
			</div>
		</form>
	</div>
	
	
	<div class=pop>
	</div>
	
</body>
</html>