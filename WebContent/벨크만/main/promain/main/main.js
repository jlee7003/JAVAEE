function view(n,pp)
{
   // 하위메뉴에 해당되는 class=menu 에게 display=>block : 보이기
	document.getElementsByClassName("menu")[n].style.display="block";
	pp.style.height="200px"; // 주메뉴가 있는 li태그
}