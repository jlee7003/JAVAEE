


var true_sub = 0;
// pro_content.jsp
var cart = new XMLHttpRequest();
var wish = new XMLHttpRequest();

function page_cart()
{
  location="cart_view.jsp";
}
function not_cart()
{
  document.getElementById("cart_layer").style.display="none";
}

function page_wish()
{
  location="wish_view.jsp";
}
function not_wish()
{
  document.getElementById("wish_layer").style.display="none";
}

function move_cart(pid) {

	var size = document.getElementById("psize").value;
	var su = document.getElementById("su").value;
	url = "cart_ok.jsp?pid=" + pid + "&psize=" + size + "&su=" + su;
	cart.open("get", url);
	cart.send();
}
cart.onreadystatechange = function() {
	if (cart.readyState == 4) 
	{
		if (cart.responseText.trim() == "ok") 
//			responseText.trim(): 를 사용할때 전달하는 html의 값이 오직 ok여야 해서 body에 값이 있을 경우 전달 되지 않는다
			document.getElementById("cart_layer").style.display = "block";
		
	}

}

function move_wish(pid) {

	url = "wish_ok.jsp?pid=" + pid;
	wish.open("get", url);
	wish.send();
}
wish.onreadystatechange = function() {
	if (wish.readyState == 4) 
	{alert(wish.responseText);
		if (wish.responseText.trim() == "ok") 
//			responseText.trim(): 를 사용할때 전달하는 html의 값이 오직 ok여야 해서 body에 값이 있을 경우 전달 되지 않는다
			document.getElementById("wish_layer").style.display = "block";
		
	}

}
// pro_list.jsp
function move_content(id) {

	location = "pro_content.jsp?id=" + id;

}

function view(n, pp, hei) {
	for (i = 0; i < 7; i++) {
		document.getElementsByClassName("menu")[i].style.display = "none";// 하위
																			// 메뉴
																			// 숨기기
		document.getElementsByClassName("main")[i].style.height = "25px"; // 하위
																			// 메뉴의
																			// 높이
		// 원위치
	}
	// 하위매뉴에 해당 되는 class=menu 에게 display => block : 보이기
	document.getElementsByClassName("menu")[n].style.display = "block";
	pp.style.height = hei + "px";

}
function check_userid(pp) {
	// 아이디 길이가 4~16자 인지 확인
	// form에 입력된 값 -> document.폼이름.입력양식이름.value
	// 대상이 한개일 경우 가능하면 this로 해주는 것이 편하다
	var len = pp.value.length; // =입력된 값
	if (len >= 4 && len <= 16) {
		pp.style.color = "green"; // 글자색 초록색으로
		document.getElementById("pkc2").innerHTML = "";
		true_sub++;
	} else {
		document.getElementById("pkc2").innerHTML = "<b>아이디의 길이가 적당하지 않습니다.</b>";
		document.getElementById("pkc2").style.color = "red";
		pp.value = "";
	}

}
function check_len(pp) {
	var len = pp.value.length; // =입력된 값
	if (len >= 4 && len <= 16) {
		pp.style.color = "green"; // 글자색 초록색으로
		document.getElementById("pkc3").innerHTML = "";
		true_sub++;
	} else {
		document.getElementById("pkc3").innerHTML = "<b>비밀번호의 길이가 적당하지 않습니다.</b>";
		document.getElementById("pkc3").style.color = "red";
		pp.value = "";
	}

}
function check_equal(pp) {
	var len = pp.value;
	if (len == document.all.pwd1.value) {
		pp.style.color = "green"; // 글자색 초록색으로
		document.getElementById("pkc4").innerHTML = "";
		true_sub++;
	} else {
		document.getElementById("pkc4").innerHTML = "<b>비밀번호가 일치하지 않습니다.</b>";
		document.getElementById("pkc4").style.color = "red";
		pp.value = "";
	}
}
function email_chg(pp) {
	// var smail=document.getElementById("emailsel");
	// var selemail=smail.options[smail.selectedIndex].value;
	// document.all.email2.value=selemail;

	document.all.email2.value = pp.value;
}
function check_onoff(pp) // member.jsp 체크되면 하위의 checkbox를 true check가 해제되면
// false
{

	var memchk = document.getElementsByClassName("chk");
	if (pp.checked == true) {
		for (i = 0; i < 4; i++)
			memchk[i].checked = true;
	} else {
		for (i = 0; i < 4; i++)
			memchk[i].checked = false;
	}
	// memchk[0].checked=true;
	// memchk[1].checked=true;
	// memchk[2].checked=true;
	// memchk[3].checked=true;
	// memchk[4].checked=true;
}
function main_check() {
	var ck = 0;
	var memchk = document.getElementsByClassName("chk");

	for (i = 0; i < 4; i++)
		if (memchk[i].checked == false)
			ck = 1;
	if (ck == 0)
		document.getElementById("chk_main").checked = true;
	else
		document.getElementById("chk_main").checked = false;

}
function sub_check() {
	var pp = document.pkc;
	pp.phone.value = pp.p1.value + "-" + pp.p2.value + "-" + pp.p3.value;
	pp.hphone.value = pp.hp1.value + "-" + pp.hp2.value + "-" + pp.hp3.value;
	pp.email.value = pp.email1.value + "@" + pp.email2.value;
	pp.birth.value = pp.yy.value + "-" + pp.mm.value + "-" + pp.dd.value;
	//	
	// var memchk=document.getElementsByClassName("chk");
	// if(!(true_sub==3))
	// {
	// alert("필수 항목을 확인해주세요");
	// alert(true_sub);
	// return false;
	// }
	// else if(memchk[1].checked==false && memchk[2].checked==false)
	// {
	// alert("필수 항목을 확인해주세요");
	// alert(true_sub);
	// return false;
	// }
	// else
	// return true;
}
function chg(n) // 글자바꾸기, 해당input태그 보이기(다른input숨기기)
{
	if (n == 0) // 이메일
	{
		document.getElementById("aa").innerText = "이메일로 찾기";
	} else // 핸드폰
	{
		document.getElementById("aa").innerText = "핸드폰으로 찾기";
	}
}