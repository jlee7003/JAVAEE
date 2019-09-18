<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
    <%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- /* request객체 */ -->
<% request.setCharacterEncoding("utf-8");
	out.print(request.getParameter("name"));
	out.print(request.getParameter("juso"));
// 	out.print(request.getParameter("hobby"));
	//getParameter("폼이름")-> 폼이름이 복수라도 1개만 가지고 온다 
/* --------------------------------------------------- */
	String[] hobby=request.getParameterValues("hobby"); //폼이름이 복수라면 복수개를 가져온다.
	out.print(hobby.length);
	for(int i=0; i<hobby.length;i++)
	{
		out.print(hobby[i]+" ");
	}
	//getParameterValues()는 리턴값이 배열 => 복수개의 값을 배열로 전달
	out.print("<p>");
	/* --------------------------------------------------- */
Enumeration penum=request.getParameterNames(); //집합개념
while(penum.hasMoreElements())
{
	out.print(penum.nextElement().toString()+" ");
}
// penum.hasMoreElements(); //동일한 이름은 더 안가져온다
// out.print(penum.nextElement().toString());
// penum.hasMoreElements();
// out.print(penum.nextElement().toString());
// penum.hasMoreElements();
// out.print(penum.nextElement().toString());
// 	request.getParameterNames(); => form에서 전송된 name을 가져온다.
// 	request.getParameterMap(); //앞에 인덱스 값을 줄수 있음 숫자가 아니여도 상관 없음

	//rs.next() => 존재 하면  true 없으면 false
	//hasMoreElements() => 존재 하면  true 없으면 fa g
	
	lse
	
	/* --------------------------------------------------- */
	out.print("<p>");
	
	Map map=request.getParameterMap();
	String[] pname=(String [])map.get("name");
	out.print(pname[0]);
	
	String[] pjuso=(String [])map.get("juso");
	out.print(pjuso[0]);
	
	String[] phobby=(String [])map.get("hobby");
	out.print(phobby[0]);
	//
%>

</body>
</html>