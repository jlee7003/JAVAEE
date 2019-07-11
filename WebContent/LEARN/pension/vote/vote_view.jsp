<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.sql.*"%><!-- 이건 뭘까? -->
<!--     스크립트 영역 -->
<%
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);// dv와의 접속이 만들어짐
	Statement stmt = conn.createStatement();

	String sql = "select * from vote where id=1";
	ResultSet rs;//화면에 데이터베이스 표현 할 것이면 사용
	rs = stmt.executeQuery(sql);
	rs.next();
	//전체 투표수 계산

	int total = rs.getInt("a1") + rs.getInt("a2") + rs.getInt("a3") + rs.getInt("a4") + rs.getInt("a5")
			+ rs.getInt("a6") + rs.getInt("a7");

	int a1 = (int) ((rs.getDouble("a1") / total) * 100);
	int a2 = (int) ((rs.getDouble("a2") / total) * 100);
	int a3 = (int) ((rs.getDouble("a3") / total) * 100);
	int a4 = (int) ((rs.getDouble("a4") / total) * 100);
	int a5 = (int) ((rs.getDouble("a5") / total) * 100);
	int a6 = (int) ((rs.getDouble("a6") / total) * 100);
	int a7 = (int) ((rs.getDouble("a7") / total) * 100);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
td:nth-child(2){
	width: 400px;
	height: 30px;
	border-bottom:1px solid black;
	
}
td:nth-child(1){
  background:black;
  text-align:center;
   color:white;
   border-bottom:2px solid gray;
  border-radius:5px;
  font-size:12px;
}

table
{
border-radius:5px;
padding:5px;
border:1px solid black;
}
body{
margin-top:50px;
}

#aa {
	width: <%=a1 * 4%>px;
}

#bb {
	width: <%=a2 * 4%>px;
}

#cc {
	width: <%=a3 * 4%>px;
}

#dd {
	width: <%=a4 * 4%>px;
}

#ee {
	width: <%=a5 * 4%>px;
}

#ff {
	width: <%=a6 * 4%>px;
}

#gg {
	width: <%=a7 * 4%>px;
}

#aa, #bb, #cc, #dd, #ee, #ff, #gg
 {
	height: 20px;
	background: red;
	box-shadow: 3px 3px 3px 1px #bbb;
	border-radius:3px;
}
#per{
color:red;
 
}
#per:hover{
color:black;
  }
  
  
</style>
<body align=center>
<caption> <h3>당신이 좋아하는 안주는?</h3></caption>
	<table width=500 align=center>
		<tr>
			<td width=100>생선회</td>
			<td><div id=aa><div id=per><%=a1%>%</div> </div></td>
		</tr>
		<tr>
			<td>소곱창</td>
			<td><div id=bb><div id=per><%=a2%>%</div></div></td>
		</tr>
		<tr>
			<td>두부김치</td>
			<td><div id=cc><div id=per><%=a3%>%</div></div></td>
		</tr>
		<tr>
			<td>양꼬치</td>
			<td><div id=dd><div id=per><%=a4%>%</div></div></td>
		</tr>
		<tr>
			<td>초밥</td>
			<td><div id=ee><div id=per><%=a5%>%</div></div></td>
		</tr>
		<tr>
			<td>감자탕</td>
			<td><div id=ff><div id=per><%=a6%>%</div></div></td>
		</tr>
		<tr>
			<td>족발</td>
			<td><div id=gg><div id=per><%=a7%>%</div></div></td>
		</tr>
	</table>
	<%
		stmt.close();
		rs.close();
	%>