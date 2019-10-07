<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="belkman.Jdbc.Connect"%>
<%
	//db연결
	Connection conn = Connect.connection2();
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("utf-8");

	//request 받기 
	request.setCharacterEncoding("utf-8");
	String bname = request.getParameter("bname");
	String name = request.getParameter("name");
	String zip = request.getParameter("zip");
	String juso1 = request.getParameter("juso1");
	String juso2 = request.getParameter("juso2");
	String phone = request.getParameter("p1") + "-" + request.getParameter("p2") + "-"
			+ request.getParameter("p3");
	String hphone = request.getParameter("hp1") + "-" + request.getParameter("hp2") + "-"
			+ request.getParameter("hp3");
	String gibon;
	if (request.getParameter("gibon") == null)
		gibon = "0";
	gibon = request.getParameter("gibon");
	String userid = session.getAttribute("userid").toString();
	// 쿼리 작성
	String sql = "insert into baesong(bname, name, zip, juso1, juso2,";
	sql = sql + "phone, hphone, gibon, userid, writeday) ";
	sql = sql + "values(?,?,?,?,?,?,?,?,?,now())";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,bname);
	pstmt.setString(2,name);
	pstmt.setString(3,zip);
	pstmt.setString(4,juso1);
	pstmt.setString(5,juso2);
	pstmt.setString(6,phone);
	pstmt.setString(7,hphone);
	pstmt.setString(8,gibon);
	pstmt.setString(9,userid);
	//쿼리 실행
	pstmt.executeUpdate();

	pstmt.close();
	conn.close();
	response.sendRedirect("bae_list.jsp");
	//bae_list.jsp
%>