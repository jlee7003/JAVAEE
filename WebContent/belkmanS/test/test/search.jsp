<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>    <!-- search.jsp -->
<%
   out.print(request.getParameter("sel")+"<p>");  // 0:이메일 1:핸드폰 
   out.print(request.getParameter("email")+"<p>");
   out.print(request.getParameter("hphone")+"<p>");
   
   String sql=null;
   if(request.getParameter("sel").equals("0"))
	   sql="select * from member where name='홍길동' and email='hong@naver.com'";// 이메일 검색
   else
	   sql="select * from member where name='홍길동' and hphone='010-1234-5678'";
	   // 핸드폰 검색
		   
   // if부분에 숫자로 비교하고 싶으면
   int sel=Integer.parseInt(request.getParameter("sel"));
   //if(sel==0)
%>












