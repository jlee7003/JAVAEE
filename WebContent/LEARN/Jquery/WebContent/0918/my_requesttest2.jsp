<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	out.print(request.getParameter("hobby"));
	//getParameter("폼이름")-> 폼이름이 복수라도 1개만 가지고 온다 
	String[] hobby=request.getParameterValues("hobby"); //폼이름이 복수라면 복수개를 가져온다.
	out.print(hobby.length);
	for(int i=0; i<hobby.length;i++)
	{
		out.print(hobby[i]+" ");
	}
	//getParameterValues()는 리턴값이 배열 => 복수개의 값을 배열로 전달
// 	request.getParameterNames();
// 	request.getParameterMap();


%>

</body>
</html>