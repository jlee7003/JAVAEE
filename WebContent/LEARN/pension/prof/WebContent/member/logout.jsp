<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
  session.invalidate(); // 세션변수 종료
  
  response.sendRedirect("../main/index.jsp");
%>    