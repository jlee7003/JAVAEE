<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="OUI_booking.css?ver=1">
<script src="https://code.jquery.com/jquery-latest.js?ver=1"></script>
<style>

</style>
<script>
function active1() {
	
	document.all.body.style.opacity = "1";
	document.all.pop.style.backgroundColor="red";
	document.all.opacity.style.color = "pink";
	
	
}
$(function()   
		{
	    $("#IHL").hide();
		$("#IHL1").hide();
		$("#IHL2").hide();
		$("#IHL3").hide();
		$("#order1").hide();
		$("#order2").hide();
			$("#bottom1").click(function()
			{
	           $("#order1").toggle(); // slow, fast, 1/1000초
	           $("#order2").toggle();
			});
			$("#opacity").click(function()
					{
				  $("#IHL").show();
					$("#IHL1").show();
					
					});
		});

	function wrapWindowByMask() {
		document.all.mask.style.visibility="visible";
		document.all.pop.style.visibility="visible";
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});
		//애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
		
		$('#mask').fadeTo("slow", 0.4);
		//윈도우 같은 거 띄운다.
		$('.window').show();
	}
	$(document).ready(function() {
		//검은 막 띄우기
		$('.openMask').click(function(e) {
			e.preventDefault();
			wrapWindowByMask();
		});
		//닫기 버튼을 눌렀을 때
		$('.window .close').click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();
			$('#mask, .window').hide();
		});
		//검은 막을 눌렀을 때
		$('#mask').click(function() {
			$(this).hide();
			$('.windo').hide();
		});
	});
	

	</script>
</head>
<body id=body>
	<div class=book_body>
		<form method=post  name=bok>
			<div id=jumbotron>
				<div>
					Access your <b>tickets</b>,<br> your <b>card</b> or your <b>subscription</b>
				</div>
			</div>
			<div class=center>
				<div id=left>
					<div id=top><input id=ref type=text onFocus="javascript:this.value=''" onblur="javascript:this.value='Reference number (example: ABC123)'" value="Reference number (example: ABC123)"></div>
					<div id=IHL>
					Please fill in your reference number.
					</div>
					<div id=bottom >
						<div id="mask"  onclick=index()></div>
						<div class="window"></div>
						<a href="#" class="openMask">Where do I find my reference
							number? </a>
					</div>
					<div id=order1><input type=text value="Train number (Example: 0589)"></div>
					<div id=IHL3>Please fill in your train number.</div>
				</div>

				<div id=right>
					<div id=top><input id=ref type=text onFocus="javascript:this.value=''" onblur="javascript:this.value='Last name used for the order'" value="Last name used for the order"></div>
					<div id=IHL1>Please enter a last name for bookings made on OUI.sncf or on your mobile.</div>
					<div id=bottom1 >I don’t have the order name</div>
					<div id=order2><input type=text value="Date of departure"></div>
					<div id=IHL2>Please fill in a valid date of departure.</div>
				</div>
			</div>
			<div id=book_button>
				<input id=opacity type=button value="Consult my order">
<!-- 				submit을 사용하면 페이지에 전송이 되므로 바로 사라짐 -->
					
			</div>
		</form>
	</div>


	<div id=pop>
	<div>
	<div class=x onclick="close_pop();">x</div>
	
Where do I find my reference number?<p>
It appears in the confirmation email received during your purchase on the OUI.sncf site.

Should you make your purchase at the station, it will have been communicated to you by your SNCF agent and is present on the card ticket. It is made up 6 alphabetic or alphanumeric characters,

for example : UAEGHD or A1U72P<p>

I can’t find my reference number
	</div>
	</div>

</body>
</html>