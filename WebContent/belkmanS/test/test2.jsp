<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="belkman.test.member" %>
    <%@ page import="belkman.test.Array2" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
ArrayList<member> list =Array2.view_member(); //받을려면 똑같은 클래스로 받아야함

for(int i=0;i<list.size();i++)
{
	out.print(list.get(i).getName());
	out.print(list.get(i).getAge());
	out.print("<p>");
}
%>
