<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>    <!-- search.jsp -->
<%
      String sel=request.getParameter("sel");
      String name=request.getParameter("name");
      String val=request.getParameter("val");
      
      String sql=null;
      if(sel.equals("0"))
    	  sql="select * from member where name='"+name+"' and email='"+val+"'";
      else
    	  sql="select * from member where name='"+name+"' and hphone='"+val+"'";
%>
 <%=rs.getString("title") %>












