<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/pension?useSSL=false", "root","1234");
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("UTF-8");
	
	String g_id = request.getParameter("g_id");
	String name= request.getParameter("name");
	String content = request.getParameter("content");
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
	
	String sql="insert into gong_dat(name,content,writeday,g_id) values(?,?,?,?)";
	
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,content);
	pstmt.setString(3,writeday);
	pstmt.setString(4,g_id);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	//
	response.sendRedirect("notice_content.jsp?id="+g_id);
	%>