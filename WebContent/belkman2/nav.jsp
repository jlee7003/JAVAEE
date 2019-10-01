<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="../etc/main.js"></script>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
 <script>
   $(function()
   {
	 $("#logo").mouseover(function()
	 {	
		$(this).animate(
		{
			color:"#bbbbbb"		
		},500);
	 });   
	 $("#logo").mouseout(function()
	 {
		 $(this).animate(
		 {
			color:"black"		
	 	 },500);
	 });
   });
   
   
   $(function()
		   {
			 $(".main").mouseover(function()
			 {	
				$(this).animate(
				{
					color:"#bbbbbb"		
				},500);
			 });   
			 $(".main").mouseout(function()
			 {
				 $(this).animate(
				 {
					color:"black"		
			 	 },500);
			 });
		   });
 </script>
<nav>
	<!-- <div id=l_menuwrap> -->
	<!-- <div class=left_top> -->
	<!--  <div class=logo_anthony> </div> -->
	<!--  <div id=wrap_contents></div> -->
	<!-- </div> -->
	<!-- </div> -->
	  <div id=logo> A N T H O N Y</div>
	<ul>
		<li class=main onclick=view(0,this,200)>SUITS
			<ul class=menu>
				<li></li>
				<li >싱글 슈트</li>
				<li>스트라이프 슈트</li>
				<li>비즈니스 슈트</li>
				<li>더블 슈트</li>
				<li>체크 슈트</li>
				<li>수트 악세사리</li>
				<li></li>
			</ul>
		</li>
		<li class=main onclick=view(1,this,130)>TOP
			<ul class=menu>
				<li></li>
				<li>긴팔 티셔츠</li>
				<li>반팔 치셔프</li>
				<li>헨리넥</li>
				<li>니트</li>
			</ul>
		</li>

		<li class=main onclick=view(2,this,150)>SHIRTS
			<ul class=menu>
				<li></li>
				<li>스타라이프 셔츠</li>
				<li>오픈 카라 셔츠</li>
				<li>솔리드 셔츠</li>
				<li>체크 셔츠</li>
				<li>Etc.</li>
			</ul>
		</li>
		<li class=main onclick=view(3,this,170)>PANTS
			<ul class=menu>
				<li></li>
				<li>슬랙스</li>
				<li>면바지</li>
				<li>청바지</li>
				<li>반바지</li>
				<li>조거팬츠</li>
				<li>Etc.</li>
			</ul>
		</li>
		<li class=main onclick=view(4,this,150)>OUTER
			<ul class=menu>
				<li></li>
				<li>코트</li>
				<li>자켓/블레이저</li>
				<li>가디건</li>
				<li>베스트</li>
				<li>점퍼</li>
			</ul>
		</li>
		<li class=main onclick=view(5,this,150)>SHOES
			<ul class=menu>
				<li></li>
				<li>드레스 슈즈</li>
				<li>스니커즈</li>
				<li>벨크만 슈즈</li>
				<li>부츠/워커</li>
				<li>Etc.</li>
			</ul>
		</li>
		<li class=main onclick=view(6,this,300)>ACCESSORY
			<ul class=menu>
				<li></li>
				<li>타이/행거치프</li>
				<li>머플러/스카프</li>
				<li>목걸이/팔찌</li>
				<li>벨트/서스펜더</li>
				<li>아이웨어</li>
				<li>모자</li>
				<li>가방</li>
				<li>타이핀/부토니에</li>
				<li>양말</li>
				<li>시계</li>
				<li>벨크만 악세사리</li>
				<li>방향제</li>
				<li>Etc.</li>
			</ul>
		</li>
		<li>&nbsp;</li>
		<li class=main>BEST</li>
		<li class=main>NEW</li>
	</ul>
	<ul>
		<li><a href="../login/login.jsp">LOGIN</a></li>
		<li>MY ACCOUNT</li>
		<li>CART</li>
		<li>QNA / REVIEW</li>
	</ul>
</nav>
