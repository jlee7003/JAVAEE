<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#first {
	
}

#second {
	display: none;
}
</style>
<script>
//1.체크박스에 
 function bae_chg() // 배송지등록이 버튼 클릭 => id=first는 숨기고 second를 보이기
 {
	 document.getElementById("first").style.display="none";
	 document.getElementById("second").style.display="block";
 }
 function bae_chg2() // 배송지등록이 버튼 클릭 => id=first는 숨기고 second를 보이기
 {
	 document.getElementById("first").style.display="block";
	 document.getElementById("second").style.display="none";
 }
</script>
<!-- daum 도로명주소검색 API 시작 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
  {
    new daum.Postcode({
        oncomplete: function(data) {
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

         
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.pkc.zip.value = data.zonecode; // 우편번호
            document.pkc.juso1.value = addr;  // 주소
            // 커서를 상세주소 필드로 이동한다.
            document.pkc.juso2.value="";
            document.pkc.juso2.focus();
           
        }
    }).open();
  }

</script>
<!-- daum 도로명주소검색 API 끝 -->
</head>
<body>
	<div>배송 주소록 관리</div>
	<div>배송주소록 유의사항</div>
	<div id=first>
		<!--  등록된 배송주소 -->
		<table>
			<tr>
				<td>&nbsp;</td>
				<td>주소록 고정</td>
				<td>배송지명</td>
				<td>수령인</td>
				<td>일반전화</td>
				<td>휴대전화</td>
				<td>주소</td>
				<td>배송지관리</td>
			</tr>
			<%@ page import="java.sql.*"%>
			<%@ page import="belkman.Jdbc.Connect"%>
			<%
				Connection conn = Connect.connection2();
				Statement stmt = conn.createStatement();
				
				String sql="select * from baesong where userid='"+session.getAttribute("userid")+"'";
				ResultSet rs=stmt.executeQuery(sql);
				
				while(rs.next())
				{
					
				
			%>
			<tr><!-- DB에 있는 배송지를 읽어와서 출력하는 부분 -->
				<td><input type=checkbox></td>
				<td> - </td>
				<td><%=rs.getString("bname")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getString("phone")%></td>
				<td><%=rs.getString("hphone")%></td>
				<td>(<%=rs.getString("zip")%>)<%=rs.getString("juso1")%></td>
				<td>
				<input type=button value=적용>
				<input type=button value=수정>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		<div>
			<input type=button value=배송지등록 onclick=bae_chg()>
		</div>
	</div>
	<div id=second>
		<!--  배송주소를 등록하는 영역 -->
		<form method=post action=bae_save.jsp name=pkc>
			<table>
				<tr>
					<td>배송지명</td>
					<td><input type=text name=bname></td>
				</tr>
				<tr>
					<td>성명</td>
					<td><input type=text name=name></td>
				</tr>
				<tr>
					<td rowspan=3>주소</td>
					<td><input type=text name=zip> <input type=button
						value=우편번호 onclick=juso_search()></td>
				</tr>
				<tr>
					<td><input type=text name=juso1> 기본주소
				</tr>
				<tr>
					<td><input type=text name=juso2> 나머지주소
				</tr>
				<tr>
					<td>일반전화 *</td>
					<td><select name=p1 id=p1>
							<option value=02>02</option>
							<option value=031>031</option>
							<option value=032>032</option>
							<option value=033>032</option>
					</select> <input type=text name=p2> <input type=text name=p3>
					</td>
				</tr>
				<tr>
					<td>휴대전화</td>
					<td><select name=hp1 id=hp1>
							<option value=010>010</option>
							<option value=011>011</option>
							<option value=016>016</option>
							<option value=017>017</option>
					</select> <input type=text name=hp2> <input type=text name=hp3>
					</td>
				</tr>
				<tr>
					<td colspan=2><input type=checkbox name=gibon value=1>기본주소로
						저장</td>
				</tr>
			</table>
			<div>
				<input type=submit value=등록> <input type=button value=취소
					onclick=bae_chg2()>
			</div>
		</form>
	</div>

</body>
</html>

