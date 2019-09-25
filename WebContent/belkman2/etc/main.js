function view(n,pp,hei)
{
	for(i=0;i<7;i++)
		{
	document.getElementsByClassName("menu")[i].style.display="none";//하위 메뉴 숨기기
	document.getElementsByClassName("main")[i].style.height="25px"; //하위 메뉴의 높이 원위치
         }
 	//하위매뉴에 해당 되는 class=menu 에게 display => block : 보이기
	document.getElementsByClassName("menu")[n].style.display="block";
	pp.style.height=hei+"px";
	
}
function check_userid(pp)
{
	//아이디 길이가 4~16자 인지 확인
	//form에 입력된 값 -> document.폼이름.입력양식이름.value
	//대상이 한개일 경우 가능하면 this로 해주는 것이 편하다
	 var len=pp.value.length;  //=입력된 값
	 if(len >=4 && len <=16)
		 {
		 pp.style.color="green"; //글자색 초록색으로
	 document.getElementById("pkc2").innerHTML="";
		 }
	 else
		 {
			document.getElementById("pkc2").innerHTML="<b>아이디의 길이가 적당하지 않습니다.</b>";
			document.getElementById("pkc2").style.color="red";
		 pp.value="";
		 }
	 
}
function check_len(pp)
{
	 var len=pp.value.length; //=입력된 값
	 if(len >=4 && len <=16)
		 {
		 pp.style.color="green"; //글자색 초록색으로
		 document.getElementById("pkc3").innerHTML="";
		 }
	 else
		 {
			document.getElementById("pkc3").innerHTML="<b>비밀번호의 길이가 적당하지 않습니다.</b>";
			document.getElementById("pkc3").style.color="red";
		 pp.value="";
		 }
	 
}
function check_equal(pp)
{
	var len=pp.value;
	if(len==document.all.pwd1.value)
	 {
		 pp.style.color="green"; //글자색 초록색으로
		 document.getElementById("pkc4").innerHTML="";
		 } 
	else{
		document.getElementById("pkc4").innerHTML="<b>비밀번호가 일치하지 않습니다.</b>";
		document.getElementById("pkc4").style.color="red";
		 pp.value="";
	}
}
function email_chg(pp)
{
//	var smail=document.getElementById("emailsel");
//	var selemail=smail.options[smail.selectedIndex].value;
//	document.all.email2.value=selemail;
	
	document.all.email2.value=pp.value;
}
function check_onoff(pp) //member.jsp 체크되면 하위의 checkbox를 true check가 해제되면 false
{

  var memchk=document.getElementsByClassName("chk");
  if(pp.checked == true)
	  {
  for(i=0;i<4;i++)
	  memchk[i].checked=true;
	  }
  else
	  {
  for(i=0;i<4;i++)
	  memchk[i].checked=false;
	  }
//  memchk[0].checked=true;
//  memchk[1].checked=true;
//  memchk[2].checked=true;
//  memchk[3].checked=true;
//  memchk[4].checked=true;
}
function main_check()
{
	var ck=0;
	  var memchk=document.getElementsByClassName("chk");
	
	for(i=0;i<4;i++)
		if(memchk[i].checked==false)
			ck=1;
	if(ck==0)
	document.getElementById("chk_main").checked=true;
	else
	document.getElementById("chk_main").checked=false;
}