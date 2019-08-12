<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@ page import="java.util.Date"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%
    String aa="jabc:mysql://localhost:3307/amudo?useSSL=false";
    String bb="root";
    String cc="1234";
    Connection conn=DriverManager.getConnection(aa,bb,cc);
    Statement stmt=conn.createStatement();
    request.setCharacterEncoding("utf-8");
    
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sung=request.getParameter("sung");
    String pwd=request.getParameter("pwd");
    Date today =new Date();
    SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
    //표현할 날짜 형식의 객체를 생성
    String writeday=sdf.format(today);
    String sql="insert into board(title,content,name,age,sung,pwd,writeday) value('"+title+"','"+content+"','"+name+"',"+age+","+sung+",'"+pwd+"','"+writeday+"')";  
   
    stmt.executeUpdate(sql);	
	response.sendRedirect("list.jsp");
	stmt.close();
	conn.close();
    %>

<%
//write_ok.jsp
/*  
1. form을 통해 받은 input의 name들의 값을 request.getParameter("")로 가지고 온다
    ->String title=request.getParameter("title");
    
2.sql문으로 입력해주기

3.response.sendRedirect("list.jsp");
*/

%>
