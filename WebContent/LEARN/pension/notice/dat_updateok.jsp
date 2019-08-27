<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/pension?useSSL=false", "root","1234");
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("UTF-8");
	
	String g_id = request.getParameter("g_id");//gong dat의 id
	String name= request.getParameter("name");
	String content = request.getParameter("content");
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
	
	String sql="update gong_dat set name=? , content=? where id=?";

	
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.setString(2,content);
	pstmt.setString(3,g_id);
	pstmt.executeUpdate();
	
	//gongji 테이블의 아이디를 구하기 위해서 
	sql="select g_id from gong_dat where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,g_id);
	ResultSet rs=pstmt.executeQuery();
	rs.next();
	
	out.print("ok");
	// gong_content.jsp로 이동
	//response.sendRedirect("notice_content.jsp?id="+rs.getString("g_id"));
	//현제 g_id는 gongji의 아이디
	pstmt.close();
	conn.close();
%>