<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?after">
<script src="../etc/main.js?after1"></script>
<!-- daum 도로명주소검색 API 시작 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
            document.pkc.juso2.focus();
        }
    }).open();
  }

</script>
<!-- daum 도로명주소검색 API 끝 -->

</head>
<body>
  <jsp:include page="../nav.jsp" flush="false" />
  <div id=right>
    <section class=member_section> 
    <div id=in_div align=center class=space> 회원가입    </div> <!-- 제목줄 -->
    <form name=pkc method=post action=member_ok2.jsp onsubmit="return sub_check()">
    <input type=hidden name=phone>
    <input type=hidden name=hphone>
    <input type=hidden name=email>
    <input type=hidden name=birth>
    <table width=800 border=0> <!-- 회원 구분이 있는 첫테이블 -->
    <tr>
    <td  class=td1>회원구분</td>
    <td><input type=radio name=men value=1 checked>개인회원</td>
    </tr>
    </table>
    
    <div id=in_div class=space>
    <div id=tb_left >기본정보</div>
    <div id=tb_right>*필수입력사항</div>
    </div>
    
<table width=800 border=0>
<tr>
<td class=td1>아이디 *</td>
<td><input type=text name=userid class=in1 onblur=check_userid(this)>(영문소문자/숫자, 4자~16자)
<div id=pkc2></div>
</td>
</tr>
<tr>
<td class=td1> 비밀번호 *</td>
<td><input type=password name=pwd class=in1 onblur=check_len(this)>
<div id=pkc3></div>
</td>
</tr>
<tr>
<td class=td1>비밀번호 확인*</td>
<td><input type=password name=pwd2 class=in1 onblur=check_equal(this)>
<div id=pkc4></div>
</td>
</tr>
<tr>
<td class=td1>비밀번호 확인 질문</td>
<td>
<select name=pwd_que>
<option value=0>기억에 남는 추억의 장소는?</option>
<option value=1>자신의 인생 좌우명은?</option>
<option value=2>자신의 보물 제 1호는?</option>
<option value=3>가장 기억에 남는 선생님의 성함은?</option>
<option value=4>타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value=5>추억하고 싶은 날짜가 있다면?</option>
<option value=6>받았던 선물 중 기억에 남는 독특한 선물은?</option>
<option value=7>유년시절 가장 생각나는 친구 이름은?</option>
<option value=8>인상 깊게 읽은 책 이름은?</option>
<option value=9>읽은 책 중에서 좋아하는 구절이 있다면</option>
<option value=10>자신이 두번째로 존경하는 이물은?</option>
<option value=11>친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
<option value=12>초등학교 때 기억에 남는 짝궁의 이름은?</option>
<option value=13>다시 태어나면 되고 싶은 것은?</option>
<option value=14>내가 좋아하는 캐릭터는?</option>
</select>
</td>
</tr>
<tr>
<td class=td1>비밀번호 확인 답변</td>
<td><input type=text name=pwd_an class=in1></td>
</tr>
<tr>
<td class=td1>이름</td>
<td><input type=text name=name class=in1></td>
</tr>
<tr>
<td class=td1>주소</td>
<td style="line-height:30px">
<input type=text name=zip><input type=button value=우편번호 class=zip  onclick=juso_search()> <br>
<input type=text name=juso1 class=in1> 기본주소 <br>
<input type=text name=juso2 class=in1> 나머지 주소
</td>
</tr>
<tr>
<td class=td1>일반전화</td>
      
<td>
     <select name=p1>
              <option value=02> 02 </option>
              <option value=031> 031 </option>
              <option value=032> 032 </option>
              <option value=033> 033 </option>
            </select>
      <input type=text name=p2 class=in2>
            <input type=text name=p3 class=in2>
</tr>
<tr>
<td class=td1>핸드폰*</td>
<td>
<select name=hp1  style="width:55px;">
<option value=010>010</option>
<option value=011>011</option>
<option value=016>016</option>
<option value=017>017</option>
<option value=018>018</option>
<option value=019>019</option>
</select>
 -
<input type=text size=4 name=hp2 > - <input type=text size=4 name=hp3>
</td>
</tr>
<tr>
<td class=td1>이메일*</td>
<td>
<input type=text name=email1 class=in3>@
<input type=text name=email2 class=in3>
<select id=emailsel name=email_server onchange=email_chg(this)>
<option value="">직접입력</option>
<option value="naver.com">naver.com</option>
<option value=daum.net>daum.net</option>
<option value=nate.com>nate.com</option>
<option value=hotmail.com>hotmail.com</option>
<option value=yahoo.com>yahoo.com</option>
<option value=empas.com>empas.com</option>
<option value=korea.com>korea.com</option>
<option value=dreamwiz.com>dreamwiz.com</option>
<option value=gmail.com>gmail.com</option>
</select>
</td>
</tr>
</table>

    <div id=td_left  class=space>추가정보</div>
     <table width=800 border=0>
       <tr>
         <td class=td1> 성별* </td>
         <td>
            <input type=radio name=sung value=0>남자
            <input type=radio name=sung value=1>여자
       </tr>
       <tr>
         <td class=td1> 생년월일* </td>
         <td>
            <input type=text name=yy class=birth1>년
            <input type=text name=mm class=birth2>월
            <input type=text name=dd class=birth2>일
       </tr>
     </table>
<div  class=space>전체동의</div>
     <table width=800 border=0 class=dong>
      <tr>
       <td>
         <input type=checkbox id=chk_main onclick=check_onoff(this)> 이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다. 
       </td>
      </tr>
      <tr>
       <td> 
         [필수]이용약관 동의 <p>
         <p><textarea cols=90 rows=9><jsp:include page="first.txt"/>
         </textarea> </p>
         이용약관에 동의하십니까? <input type=checkbox class=chk onclick=main_check() name=chk1 value=1>동의함
       </td>
      </tr>
      <tr>
       <td> 
       [필수]개인정보 수집 및 이용 동의 <p>
       <p><textarea cols=90 rows=9><jsp:include page="second.txt"/>
         </textarea> </p>
        개인정보 수집 및 이용에 동의하십니까?<input type=checkbox class=chk onclick=main_check() name=chk2 value=1>동의함
       </td>
      </tr>
      <tr>
       <td> 
        [선택]쇼핑정보 수신 동의 <p>
       <p> <textarea cols=90 rows=9><jsp:include page="third.txt"/>
         </textarea></p>
        SMS수신을 동의하십니까? <input type=checkbox onclick=main_check() class=chk name=chk3 value=1>동의함<p>
        이메일 수신을 동의하십니까? <input type=checkbox onclick=main_check() class=chk name=chk4 value=1>동의함
       </td>
      </tr>
     </table>
     <div class=width align=center>
     <input type=submit value=회원가입   class=button_memeber>

</div>
</form>
    </section>
    <jsp:include page="../footer.jsp" flush="false" />
    
<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
  </div>  
</body>
</html>
<!-- 
아이디의 길이
비밀번호의 길이
두개의 비밀번호가 같은가
값이 있냐 없냐는 회원가입 할떄 처리해도 된다
 -->





