<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="belkman.Jdbc.Connect"%>
<%
	Connection conn = Connect.connection2();
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");

	String sql = "select * from product where id=" + id;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 파일을 서버로 다운받은후 사용하는 방법 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?af3r3233">
<script src="../etc/main.js?after84466rr"></script>
<script>
	function alway()
	{
		
			  var str="<%=rs.getString("pcode")%>";
			  var n=str.substring(5,7);
			  var m=str.substring(7,9);
			  
				switch(n)
				{
				case "01": n="모름"; break;
				case "02": n="대한민국"; break;
				case "03": n="미국"; break;
				case "04": n="중국"; break;
				case "05": n="일본"; break;
				default: n="???";
				}
				switch(m)
				{
				case "01": m="모름"; break;
				case "02": m="LG"; break;
				case "03": m="코오롱"; break;
				case "04": m="동대문"; break;
				case "05": m="제일모직"; break;
				default: m="???";
				}
			  
			  document.getElementById("nara").innerText=n;
			  document.getElementById("made").innerText=m;
			  
	}
	
	


	$(function(){
		$("#su").spinner(
			{
			min:1,
			max:100
			});
	});

	
	
	
   </script>
</head>
<body onload=alway()>
	<jsp:include page="../nav.jsp" flush="false" />

	<div id=right>
		<section class=content_section>
			<!--     pro_content.jsp 시작 -->
			<div class=first>
				<div id=left>
					<img src="img/<%=rs.getString("pmain")%>">
				</div>
				<div id=right>
					<div id=right1><%=rs.getString("pname")%></div>
					<div id=right2><%=rs.getInt("price")%></div>
					<div id=right3><%=rs.getInt("point")%></div>
					<div id=right4>
						사이즈 <select name=size id=psize>
							<option value=0>선 택</option>
							<option value=1>S(90)</option>
							<option value=2>M(100)</option>
							<option value=3>L(110)</option>
						</select>
					</div>
					<div id=right5>
						최소주문수량 1개 이상 <br> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.
					</div>
					<div id=right6>
						<!-- jquery 플러그인 -->
						<input type=text name=su value=1 id=su style="width:30px">
					</div>
					<!-- 구매수량 선택 -->
					<div id=right7>
						<button id=buynow>BUY NOW</button>
						<button id=cart onclick=move_cart(<%=id%>)> ADD TO CART</button>
						<!-- 카트 테이블에 저장하기 -->
						<button id=wish onclick=move_wish(<%=id%>)>ADD TO WISH</button>
					</div>
					<div id=right8>네이버</div>
				</div>
			</div>
			<div class=second>
				<img src="img/<%=rs.getString("pdt_img")%>" width=800>
			</div>
			<div class=third>
				<table width=800>
					<tr>
						<td>세탁정보</td>
						<td>제조국</td>
						<td>생산자</td>
						<td>제조일자</td>
						<td>품질보증기간</td>
						<td>A/S문의처</td>
					</tr>
					<%
						String ss;
						switch (rs.getInt("pwash")) {
						case 0:
							ss = "물세탁";
							break;
						case 1:
							ss = "손세탁";
							break;
						case 2:
							ss = "드라이크리닝";
							break;
						case 3:
							ss = "올세탁";
							break;
						default:
							ss = "모름";
						}
					%>


					<tr>
						<td><%=ss%></td>
						<!--  0,1,2 이렇게 저장했으므로 switch 처리 -->
						<td id=nara></td>
						<td id=made></td>
						<td><%=rs.getString("proday")%></td>
						<td>구입후 1년 이내</td>
						<td>02-494-2344</td>
					</tr>
				</table>
			</div>
			<div class=forth></div>
			<div class=fifth></div>
			<div class=sixth></div>
			<div class=seventh></div>
			<!-- pro_content.jsp 끝 -->
		</section>
		<div>
			<jsp:include page="../footer.jsp" flush="false" />
		</div>
		<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
	</div>
	
<!-- 	장바구니 관련 레이어, 관심상품 관력 레이어 -->
<div id=cart_layer>
<p align=center> 장바구니에 상품을 담았습니다.</p>
<p align=center> 
<button id=cart_move onclick=page_cart()>장바구니로 이동</button>
<button id=move_not onclick=not_cart()>쇼핑 계속 하기</button>
</p>
</div>

<div id=wish_layer>
<p align=center> 관심 상품에 상품을 담았습니다.</p>
<p align=center> 
<button id=cart_move onclick=page_wish()>관심상품으로 이동</button>
<button id=move_not onclick=not_wish()>쇼핑 계속 하기</button>
</p>
</div>

</body>
</html>





