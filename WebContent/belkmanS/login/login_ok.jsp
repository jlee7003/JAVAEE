<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="belkman.jdbc.Connect" %>     
<%
//db연결
request.setCharacterEncoding("utf-8");

/* Connect connect=new Connect();
Connection conn = connect.connection(); */
Connection conn=Connect.connection2();
Statement stmt=conn.createStatement();

  

    
//아이디, 비밀번호 request
   String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
//회원인지 아닌지 체크
    
String sql="select * from member where userid='"+userid+"'";
sql=sql+"and pwd='"+pwd+"'";
ResultSet rs=stmt.executeQuery(sql);

//
if(rs.next())
{
	session.setAttribute("userid",rs.getString("userid"));
	session.setAttribute("name",rs.getString("name"));
	response.sendRedirect("../main/index.jsp");
}
else
{
	%>
	<script>
	alert("회원정보가 일치하지 않거나 회원이 아닙니다.");
	history.back();
	</script>
	<%
}
%>
