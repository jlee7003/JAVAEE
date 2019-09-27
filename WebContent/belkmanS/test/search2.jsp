<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>   <!-- search.jsp -->
<%
out.print(request.getParameter("sel")+"<p>");
out.print(request.getParameter("email")+"<p>");
out.print(request.getParameter("hphone")+"<p>");

String sql=null;
if(request.getParameter("sel").equals("0"))
// 	if(request.getParameter("sel").equals("0"))
	 sql="select * from member where name='홍길동' and email='hong@naver.com'";
	else
		 sql="select * from member where name='홍길동' and hphone='hong@naver.com'";

		//
		
	int sel=Integer.parseInt(request.getParameter("sel"));	
%>