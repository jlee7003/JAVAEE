// pro_content.jsp
 var cart=new XMLHttpRequest();  // cart테이블에 저장하는 ajax통해
 
 function move_cart(pid)   
 {
	 // 수량과 사이즈값을 가져오기
	 var size=document.getElementById("size").value;
	 var su=document.getElementById("su").value;
	 url="cart_ok.jsp?pid="+pid+"&size="+size+"&su="+su;
	 cart.open("get",url);
	 cart.send();
 }
 cart.onreadystatechange=function()
 {
	 if(cart.readyState == 4)  
	 {
	     if(cart.responseText.trim()=="ok") // cart_ok.jsp에서 out.print() 내용
	    	 // 사용자에게 선택을 보여주기
	 }
 }

// pro_list.jsp
function move_content(id) // 상품상세 페이지 이동
{
    location="pro_content.jsp?id="+id;
}

function chg(n)
{
	document.getElementById("email").value="";
	document.getElementById("hphone").value="";
	if(n==0)
	{
		document.getElementsByClassName("aa")[0].innerText="》이메일로 찾기";
		document.getElementById("email").style.display="block";
		document.getElementById("hphone").style.display="none";
	}
	else
	{
		document.getElementsByClassName("aa")[0].innerText="》휴대폰번호 찾기";
		document.getElementById("email").style.display="none";
		document.getElementById("hphone").style.display="block";
	}
}
/*function chg(n)
{   
	if(n==0)
    {
		document.getElementsByClassName("ee")[0].style.display="block";
		document.getElementById("email").disabled=false;
		document.getElementsByClassName("hh")[0].style.display="none";
		document.getElementById("hphone").disabled=true;
		document.getElementsByClassName("aa")[0].innerText="》이메일로 찾기 ";
    }
	else
    {
		document.getElementsByClassName("hh")[0].style.display="block";
		document.getElementById("hphone").disabled=false;
		document.getElementsByClassName("ee")[0].style.display="none";
		document.getElementById("email").disabled=true;
		document.getElementsByClassName("aa")[0].innerText="》휴대폰번호 찾기 ";
    }
}*/

function main_check() // 4개의 체크중에 하나라도 체크가 해제되면 => 메인체크를 해제
{
   // 4개가 전부 체크되었는지 , 하나라도 체크가 해제되었는지 판단!!	
   var ck=0;
   var memchk=document.getElementsByClassName("chk");
   for(i=0;i<=3;i++)
	  if(memchk[i].checked==false)
		  ck=1;
   
   if(ck == 0)
	document.getElementById("chk_main").checked=true;
   else
	document.getElementById("chk_main").checked=false;
	
}
function check_onoff(pp)
{ // check가 되면 4개의 checkbox를 true , check가 해제되면 4개의 checkbox false 
	
	var memchk=document.getElementsByClassName("chk");
	if(pp.checked) // true or false
	{
	  for(i=0;i<=3;i++)
		memchk[i].checked=true;  // 4개를 check시킨다
	}
	else
	{
	 for(i=0;i<=3;i++)
		memchk[i].checked=false; // 4개를 해제
	}
	/*memchk[0].checked=true;
	memchk[1].checked=true;
	memchk[2].checked=true;
	memchk[3].checked=true;*/
}
function email_chg(pp) // member.jsp
{
	 document.pkc.email2.value=pp.value;
}
function check_equal() // 비밀번호의 값이 같은지 여부 확인
{ // 두개의 값을 다 가져와야 된다..
	// form에 입력된 값 => document.폼이름.입력양식이름.value
	//               => id,class로 가져오는 방법
	var p1=document.pkc.pwd.value;
	var p2=document.pkc.pwd2.value;
	if(p1 != p2) // 다르다면
	{
		alert("비밀번호가 틀립니다");
		document.pkc.pwd.value="";
		document.pkc.pwd2.value="";
		//document.pkc.pwd1.focus(); // focus는 적절히 사용!!
	}
}
function check_len(pp) // 비밀번호의 길이가 4~16자인지 확인
{
	var len=pp.value.length; //비밀번호의 길이
	if(len>=4 && len<=16)
		pp.style.color="blue";
	else
	{
		alert("비밀번호의 길이가 적절하지 않습니다");
		pp.value="";
		//pp.focus();
	}
}
function check_userid(pp) // 아이디의 길이가 4~16자인지 확인
{  // form에 입력된 값 => document.폼이름.입력양식이름.value
   // 1개의 양식을 처리할때는 this하는게 편하다.
 
	var len=pp.value.length;
	if(len>=4 && len<=16)
		pp.style.color="blue";  // 글자색을 파랗게
	else
    {
		alert("아이디의 길이가 적절하지 않습니다");
		pp.value="";  // 비운다
		//pp.focus();   // 커서를 위치
    }
}
function view(n,pp,hei) // nav.jsp에서의 메뉴클릭
{
	// 모든 하위메뉴 클래스를 숨기기
   for(i=0;i<=6;i++)
   {
	document.getElementsByClassName("menu")[i].style.display="none";
	// 하위메뉴를 숨기기
	document.getElementsByClassName("main")[i].style.height="25px";
	// 하위메뉴가 속한  li태그의 높이를 원래대로
   }
   // 하위메뉴에 해당되는 class=menu 에게 display=>block : 보이기
	document.getElementsByClassName("menu")[n].style.display="block";
	pp.style.height=hei+"px"; // 주메뉴가 있는 li태그
}