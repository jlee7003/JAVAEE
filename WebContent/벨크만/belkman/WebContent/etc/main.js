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