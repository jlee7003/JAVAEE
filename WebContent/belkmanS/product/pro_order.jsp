<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="belkman.Jdbc.Connect"%>
<%
	Connection conn = Connect.connection2();
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("utf-8");

	// pcode 값을 get
	String pcode = request.getParameter("pcode");
	String psize = request.getParameter("psize");
	String su = request.getParameter("su");

	String sql = "select * from product where pcode='" + pcode + "'";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?after9919">
<script src="../etc/main.js?14433"></script>
</head>
<body onload=jumun_init()>
	<jsp:include page="../nav.jsp" flush="false" />

	<%
		/* 
		1.사용자의 세션변수 
		2.pcode, 수량
		3.주소록 보기(배송지 테이블 필요)
		
		
		*/
		
		
	%>
	<div>
		<div id=right style="padding-left: 100px"rl>
			<section class=order_section>
			<form method=post action=pro_order_ok.jsp name=pkc>
				<!-- ------------------------------------------ -->
				<div id=first align=center>주문서 작성</div>
				<img class=padding_bottom src=img_order_step2.gif>
				<div id=third>
					<div id=HT_information>
						<div id=ht1>
							<div id=ht2 align=center>혜택정보</div>
							<div id=ht3>
								<div id=ht4><%=session.getAttribute("name")%>님은, [일반회원] 회원이십니다.</div>
								<div id=ht5> 가용point : 500P &nbsp; &nbsp; &nbsp; 쿠폰 : 0개 </div>
							</div>

						</div>
					</div>


				</div>

				<div id=fourth>
					주문내역
					<table width=1000 border=1>
						<tr>
							<td colspan=9 class=f76560>!상품의 옵션 및 수량 변경은 상품 상세 또는 장바구니에서
								가능합니다.</td>
						</tr>
						<tr>
							<td><input type=checkbox></td>
							<td>이미지</td>
							<td>상품정보</td>
							<td>판매가</td>
							<td>수량</td>
							<td>point</td>
							<td>배송구분</td>
							<td>배송비</td>
							<td>합계</td>
						</tr>
						<tr>
							<td><input type=checkbox></td>
							<td><img src="img/<%=rs.getString("plist")%>" width=50>
							</td>
							<td><%=rs.getString("pname")%></td>
							<p>
								<%
									String ss;
									switch (psize) {
										case "0" :
											ss = "default";
											break;
										case "1" :
											ss = rs.getString("pname") + " S(90)";
											break;
										case "2" :
											ss = rs.getString("pname") + " M(100)";
											break;
										case "3" :
											ss = rs.getString("pname") + " L(110)";
											break;
										default :
											ss = "모름";
									}
								%>
								[옵션 :
								<%=ss%>]
							<td><%=rs.getString("price")%></td>
							<td><%=su%></td>
							<td><%=rs.getString("point")%></td>
							<td>배송구분</td>
							<td>배송비</td>
							<td><%=rs.getInt("price") * Integer.parseInt(su)%></td>
						</tr>

						<tr>
							<td>&nbsp;</td>
							<td colspan=3>[기본배송]</td>
							<td colspan=5>상품구매금액 <span id=gu1><%=rs.getInt("price") * Integer.parseInt(su)%>
							</span> +배송비 0[무료]= 합계 <span id=gu2><%=rs.getInt("price") * Integer.parseInt(su)%></span>
							</td>
						</tr>
						<tr>
							<td colspan=9 class=f76560>! 상품의 옵션및 수량 변경은 상품상세 또는 장바구니에서
								가능합니다</td>
						</tr>
						<tr>
							<td colspan=5>선택상품을 <input type=button value="x 삭제하기">
							</td>
							<td colspan=4 align=right><input type=button value="이전페이지"></td>
						</tr>
					</table>
				</div>
				<%
					sql = "select * from member where userid='" + session.getAttribute("userid") + "'";
					rs = stmt.executeQuery(sql);
					rs.next();
				%>
				<div id=fifth>
					<table width=1000 border=1>
						<tr>
							<td>주문정보</td>
							<td>*필수입력사항</td>
						</tr>
						<tr>
							<td>주문하시는분 *</td>
							<td><input type=text name=name
								value="<%=rs.getString("name")%>"></td>
						</tr>
						<tr>
							<td rowspan=3>주소 *</td>
							<td><input type=text name=zip value="<%=rs.getString("zip")%>"> <input type=button
								value=우편번호 onclick=juso_search(0)></td>
						</tr>
						<tr>
							<td><input type=text name=juso1
								value="<%=rs.getString("juso1")%>"></td>
						</tr>
						<tr>
							<td><input type=text name=juso2
								value="<%=rs.getString("juso2")%>"></td>
						</tr>
						<%
							String phone = rs.getString("phone"); // phone="02-1564-4646"
							String[] pho = phone.split("-");
						%>
						<tr>
							<td>일반전화 *</td>
							<td><select name=p1 id=p1>
									<option value=02>02</option>
									<option value=031>031</option>
									<option value=032>032</option>
									<option value=033>032</option>
							</select> <input type=text name=p23 value="<%=pho[1]%>"> 
							<input type=text name=p3 value="<%=pho[2]%>"></td>
						</tr>
						<%
							String hphone = rs.getString("hphone"); // phone="02-1564-4646"
							String[] hpho = hphone.split("-");
						%>
						<tr>
							<td>휴대전화</td>
							<td><select name=hp1 id=p2>
									<option value=010>010</option>
									<option value=011>011</option>
									<option value=016>016</option>
									<option value=017>017</option>
							</select> <input type=text name=hp2 value="<%=hpho[1]%>"> <input
								type=text name=hp3 value="<%=hpho[2]%>"></td>
							<%
								String email = rs.getString("email"); // phone="02-1564-4646"
								String[] ema = email.split("@");
							%>
						
						<tr>
							<td>이메일 *</td>
							<td><input type=text name=email1 class=in3
								value="<%=ema[0]%>"> @ <input type=text name=email2
								class=in3 value="<%=ema[1]%>"> <select name=email_server
								onchange=email_chg(this)>
									<option value="">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="google.com">google.com</option>
									<option value="hotmail.com">hotmail.com</option>
							</select></td>
						</tr>
					</table>
				</div>

				<div id=sixth>
					<table width=1000 border=1>
						<tr>
							<td>배송정보</td>
							<td>*필수입력사항</td>
						</tr>
						<tr>
							<td>배송지 선택</td>
							<td>
							<input type=radio name=bae onclick=bae_juso(1) checked> 주문자정보와 동일 
							<input type=radio name=bae onclick=bae_juso(2)>새로운 배송지
								 <input type=button value=주소록보기 onclick=bae_open()>
						</tr>
						<tr>
							<td>받으시는분 *</td>
							<td><input type=text name=bname
								value="<%=rs.getString("name")%>"></td>
						</tr>
						<tr>
							<td rowspan=3>주소 *</td>
							<td>
							<input type=text name=bzip value="<%=rs.getString("zip")%>">
								 <input type=button	value=우편번호  onclick=juso_search(1)></td>
								 <!--  똑같은 함수를 구별하기 위해서 매게변수를 주기 -->
						</tr>
						<tr>
							<td><input type=text name=bjuso1
								value="<%=rs.getString("juso1")%>"></td>
						</tr>
						<tr>
							<td><input type=text name=bjuso2
								value="<%=rs.getString("juso2")%>"></td>
						</tr>
						<tr>
							<td>일반전화 *</td>
							<td><select name=bp1 id=bp1>
									<option value=02>02</option>
									<option value=031>031</option>
									<option value=032>032</option>
									<option value=033>032</option>
							</select> <input type=text name=bp2 value="<%=pho[1]%>"> <input
								type=text name=bp3 value="<%=pho[2]%>"></td>
						</tr>
						<tr>
							<td>휴대전화</td>
							<td><select name=bhp1 id=bhp1>
									<option value=010>010</option>
									<option value=011>011</option>
									<option value=016>016</option>
									<option value=017>017</option>
							</select> <input type=text name=bhp2 value="<%=hpho[1]%>"> <input
								type=text name=bhp3 value="<%=hpho[2]%>"></td>
						</tr>
						<tr>
							<td>배송메세지</td>
							<td><textarea cols=50 rows=3 name=bmsg></textarea></td>
						</tr>
					</table>
				</div>
<input type=reset>
				<div id=seventh>결제예정 금액</div>
				<div id=eighth>결제수단</div>
				<div id=ninth>무이자할부이용안내</div>
				<div id=tenth>이용 안내</div>
</form>
			</section>
			<jsp:include page="../footer.jsp" flush="false" />

			<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
		</div>
	</div>
</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function jumun_init()
{
 var p="<%=pho[0]%>";	
 var hp="<%=hpho[0]%>";	
 var p1=document.getElementById("p1");
 var p2=document.getElementById("p2");
 
 for(i=0;i<p1.length;i++)
	 {
	 if(p1[i].value==p)
		 {
		 p1.selectedIndex=i;
		 bp1.selectedIndex=i;
		 }
	 }
 
 for(i=0;i<p2.length;i++)
 {
 if(p2[i].value==hp)
	 {
	 p2.selectedIndex=i;
	 bhp1.selectedIndex=i;
	 }
 }
}

<!-- daum 도로명주소검색 API 시작 -->

function juso_search(n)  // 우편번호 버튼 클릭시 호출 함수명
{
  new daum.Postcode({
      oncomplete: function(data) {
          if (data.userSelectedType === 'R') 
          { // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
          }
          else 
          { // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
          }

          if(n==0)
          {
          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.pkc.zip.value = data.zonecode; // 우편번호
          document.pkc.juso1.value = addr;  // 주소
          // 커서를 상세주소 필드로 이동한다.
          document.pkc.juso2.value="";
          document.pkc.juso2.focus();
          
          }
          else{
              document.pkc.bzip.value = data.zonecode; // 우편번호
              document.pkc.bjuso1.value = addr;  // 주소
              // 커서를 상세주소 필드로 이동한다.
              document.pkc.bjuso2.value="";
              document.pkc.bjuso2.focus();
          }
      }
          
  }).open();
}

<!-- daum 도로명주소검색 API 끝 -->
</script>
</html>


