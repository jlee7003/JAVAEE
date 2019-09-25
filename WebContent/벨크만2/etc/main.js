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
alert();
function check_userid(pp)
{
	//아이디 길이가 4~16자 인지 확인
	//form에 입력된 값 -> document.폼이름.입력양식이름.value
	//대상이 한개일 경우 가능하면 this로 해주는 것이 편하다
	/* var len=pp.value.length;  //=입력된 값
	 if(len >=4 && len <=16)
		 pp.style.color="green"; //글자색 초록색으로
	 else
		 {
		 alert("아이디의 길이가 적절하지 않습니다.");
		 pp.value="";
		 pp.focus();
		 }*/
	 
}
function check_len(pp)
{
	 var len=pp.value.length; //=입력된 값
	 if(len >=4 && len <=16)
		 pp.style.color="green"; //글자색 초록색으로
	 else
		 {
		 alert("비밀번호의 길이가 적절하지 않습니다.");
		 pp.value="";
		 pp.focus();
		 }
}
function check_equal(pp)
{
	var len=pp.value;
	if(len==document.all.pwd1.value)
		pp.style.color="green"; 
	else{
		 alert("비밀번호가 일치하지 않습니다.");
		 pp.value="";
	}
}