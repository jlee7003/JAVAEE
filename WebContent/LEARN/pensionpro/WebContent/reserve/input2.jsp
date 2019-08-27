<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.time.LocalDate" %>    
<%@ include file="../top.jsp" %> 
<%
   request.setCharacterEncoding("utf-8");
   // reserve.jsp에서 보낸 값을 저장하기
   String bang=request.getParameter("bang");
   String y=request.getParameter("y");
   String m=request.getParameter("m");
   if(m.length()==1)
	   m="0"+m; // 1~9일 경우  => 0을 앞에 붙인다..
   String d=request.getParameter("d");
   if(d.length()==1)
	   d="0"+d;
   
   // DB에 저장될 날짜형식 => 2019-07-01
   String date=y+"-"+m+"-"+d;
   //out.print(date);
%> 
<div id=section>
 <form method=post action=input_ok2.jsp> <!-- form태그내의 입력양식 -->
  <input type=hidden name=bang value="<%=bang%>">
  <input type=hidden name=y value=<%=y%>>
  <input type=hidden name=m value=<%=m%>>
  <input type=hidden name=d value=<%=d%>>
   <table width=400 align=center>
     <tr>
       <td> 예약 방 </td>
       <td> <%=bang%> </td>
     </tr>
     <tr>
       <td> 예약자 </td>
       <td> <input type=text name=name> </td>
     </tr>
     <tr>
       <td> 전화번호 </td>
       <td> <input type=text name=phone> </td>
     </tr>
     <tr>
       <td> 입실일 </td>
       <td> <%=date%></td>
     </tr>
     <tr>
       <td> 숙박일수 </td>
       <td> 
         <select name=suk>
           <option value=1> 1박2일 </option>
           <option value=2> 2박3일 </option>
           <option value=3> 3박4일 </option>
           <option value=4> 4박5일 </option>
         </select>
       </td> <!-- 1박 ~ 4박 -->
     </tr>
     <tr>
       <td colspan=2 align=center> <input type=submit value=예약> </td>
     </tr>
   </table>
  </form>   
</div> 
<%@ include file="../bottom.jsp" %> 



















