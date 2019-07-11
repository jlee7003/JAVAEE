<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.time.LocalDate"%>
<%@ include file="../main/top2.jsp"%>
<%
	//reserve.jsp에서 보낸 값을 저장하기
	//plusday를 사용해야 input을 만들수 있음

	 String bang=request.getParameter("bang");
   String y=request.getParameter("y");
   String m=request.getParameter("m");
   if(m.length()==1)
   {
	   m="0"+m; // 1~9일 경우  => 0을 앞에 붙인다..
   }
   String d=request.getParameter("d");
   if(d.length()==1)
   {
	   d="0"+d;//1~9일 경우 0을 붙임
   }
	
	//DB에 저장된 날짜 형식은 -> yyyy-MM-dd(2019-07-10)
	String date=y+"-"+m+"-"+d;
	//out.print(date);
	//아이디 예약자이름 전화번호
	//예약방이름 입실 indate outdate writeday
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
</style>
<script>
	
</script>
<div id=section>
<form method=post action=input_ok.jsp> 
<!-- 값을 보내기 위해 히든으로 숨겨서 form에 넣어줌 input 태그 안에 있어야 값을 넘겨줄수 있다. -->
<input type=hidden name=bang value="<%=bang%>"> 
<input type=hidden name=y value="<%=y%>">
<input type=hidden name=m value="<%=m%>">
<input type=hidden name=d value="<%=d%>">
 <table width=700 align=center>
 <tr>
 <td>예약방</td>
  <td><%=bang%></td>
</tr>
 <tr>
 <td>예약자</td>
  <td><input type=text name=name></td>
</tr>
 <tr>
 <td>전화번호</td>
  <td><input type=text name=phone></td>
</tr>
 <tr>
 <td>입실일</td>
  <td><%=y%>-<%=m%>-<%=d%></td>
</tr>
 <tr>
 <td>숙박일수</td>
  <td>
  <select name=suk>
  <option value=1>1박2일 </option>
   <option value=2>2박3일 </option>
    <option value=3>3박4일 </option>
     <option value=4>4박5일 </option>
  </select>
  </td>
</tr>
<tr>
<td>
<input type=submit value=예약> 
</td>
</tr>
 </table>
 </form>
</div>
</html>
<%@ include file="../main/bottom.jsp"%>