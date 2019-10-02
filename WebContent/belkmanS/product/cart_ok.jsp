<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="belkman.Jdbc.Connect" %>   
    <%
    Connection conn=Connect.connection2();
    Statement stmt=conn.createStatement();
    request.setCharacterEncoding("utf-8");
    
    String pid=request.getParameter("pid");
    String psize=request.getParameter("psize");
    String su=request.getParameter("su");
    String userid=session.getAttribute("userid").toString();
    
    String sql="insert into cart(pid,psize,su,userid) values("+pid;
    sql=sql+","+psize+","+su+",'"+userid+"')";
    
    stmt.executeUpdate(sql);
    out.print("ok");
    
    stmt.close();
    conn.close();
    %>
    
    
