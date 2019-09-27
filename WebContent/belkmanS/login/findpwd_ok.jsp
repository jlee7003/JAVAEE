<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	String aa = "jdbc:mysql://localhost:3307/belkman?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);// db와의 접속이 만들어짐
	Statement stmt = conn.createStatement(); //stmt 라는 변수에는 서버의 정보 모두가 담겨있다.

	request.setCharacterEncoding("utf-8");

	ResultSet rs;// 데이터 수령 객체
	String sel = request.getParameter("sel");
	String name = request.getParameter("name");
	String val = request.getParameter("val");

	String sql = null;
	if (sel.equals("0"))
		sql = "select * from member where name='" + name + "' and email='" + val + "'";
	else
		sql = "select * from member where name='" + name + "' and hphone='" + val + "'";
	
	rs=stmt.executeQuery(sql);
	
	rs.next();
	out.print(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?vv2">
<script src="../etc/main.js?after1"></script>
</head>
<style>
.findid_space {
	padding-top: 100px;
}
</style>
<body>
	<jsp:include page="../nav.jsp" flush="false" />

	<div id=right>
		<section class=findid_section>
			<div class=findid_space align=center>비밀번호 찾기</div>
			<div class=find_box align=center>
				<div align=center id=font_ww>비밀번호 찾기</div>
				<div align=center id=font_bb>고객님 비밀번호 찾기가 완료 되었습니다.</div>

				<div align=center>
					이름=<%=rs.getString("name")%> <p>
					아이디=<%=rs.getString("userid")%> <p>
					비밀번호=<%=rs.getString("pwd")%> <p>

				</div>
				
				<a href="login.jsp">  <input type=button value="로그인" id=a3>
				 <a href="../main/index.jsp"> <input type=button value="HOME" id=a3></a>  
				<div></div>
			</div>
		</section>
		<jsp:include page="../footer.jsp" flush="false" />

		<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
	</div>

</body>
</html>
