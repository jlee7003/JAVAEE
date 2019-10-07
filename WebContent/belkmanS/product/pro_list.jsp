<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../etc/main.css?ver7775">
<script src="../etc/main.js?after222"></script>
</head>
<style>
img {
	width: 166px;
	height: 429px;
	padding: 20px;
}
</style>
<body>
	<jsp:include page="../nav.jsp" flush="false" />
	<div id=right>
		<section class=list_section>
			<!--  pro_list start -->
			<%@ page import="java.text.DecimalFormat"%><!--  숫자에 콤마 -->
			<%@ page import="java.sql.*"%>
			<%@ page import="belkman.Jdbc.Connect"%>
			<%@ page import="belkman.Command.Pro_list"%>
			<%@ page import="belkman.Dto.Product"%>
			<%@ page import="java.util.ArrayList"%>
			<%
				// DB 연결
				Connection conn = Connect.connection2();
				Statement stmt = conn.createStatement();
				//가져올 쿼리 작성
				String sql = "select * from product where pcode like 'p01%' limit 0,24";
				//쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);

				rs.next();
			%>
			<table width=800 cellspacing=30 border=0>
			  <tr>
<%
 String pcode=request.getParameter("pcode");
 Pro_list plist=new Pro_list();
 ArrayList<Product> list=plist.pro_list(pcode); //레코드의 값을 리턴
 //jsp로 하던 것을 자바 파일로 만들어서 사용함
 for(int i=1;i<=list.size();i++) //레코드 내용을 하나씩 가져옴
 {
%>
  <td style="cursor:pointer" onclick=move_content(<%=list.get(i-1).getId() %>)> 
    <p align=center>
     <img width=90 height=250 src="img/<%=list.get(i-1).getPlist()%>">
    </p>
    <p align=center><%=list.get(i-1).getPname()%> </p>
    <p align=right>￦<%=list.get(i-1).getPrice()%> </p>
  </td> 
<% 
  if(i%4 == 0) 
   { 
%>
 </tr>
 <tr>
<%	 
   }  // if의 끝
 }  // for의 끝
%>
 </tr>
			</table>

			<!--  pro_list end    -->
		</section>
		<jsp:include page="../footer.jsp" flush="false" />

		<!--     flush true : 문서의 출력 결과를 항상 버퍼내에서 갱신 하라는 의미이다 -->
	</div>

</body>
</html>




