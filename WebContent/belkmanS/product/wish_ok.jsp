<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="belkman.Jdbc.Connect" %>   
    <%
    Connection conn=Connect.connection2();
    Statement stmt=conn.createStatement();
    request.setCharacterEncoding("utf-8");
    
    String pid=request.getParameter("pid");
    String userid=session.getAttribute("userid").toString();
    
    String sql="insert into wish(pid,userid) values("+pid+",'"+userid+"')";
    
    stmt.executeUpdate(sql);
    out.print("ok");
    
    stmt.close();
    conn.close();
    %>
    
    
