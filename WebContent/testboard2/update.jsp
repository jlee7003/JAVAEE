<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@ include file="login.jsp"%>
<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String sql="select * from test_board2 where id="+id;
ResultSet rs=stmt.executeQuery(sql);
rs.next();


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function check()
{
n=<%=rs.getInt("sex")%>
document.leh.sex[n].checked=true;
//sex[n]에 n의 값이 문자열이므로 int형으로 해주어야 함

js=<%=rs.getString("juso")%>
document.leh.juso.selectedIndex=js;//데이터베이스의 juso 컬럼의 값을 js에 넣고 js가 선택되었음을 지정
document.leh.juso.value=<%=rs.getString("juso")%>;//
	
var ff="<%=rs.getString("food")%>"; 
//현재 rs.getString("food")의 상태는 1,3,4이므로 split을 통해  나누어주어야함
 var fo=ff.split(",");
 for(i=0;i<fo.length;i++)
  document.leh.food[fo[i]].checked=true;
}
</script>
<body onload=check()>
<form method=post action="update_ok.jsp" name=leh>
<table width=600>

<tr>
<td>이름</td>
<td><input type=text name=name value=<%=rs.getString("name")%>></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type=password name=name value=<%=rs.getString("pwd")%>></td>
</tr>
<tr>
<td>제목</td>
<td><input type=text name=title value=<%=rs.getString("title")%>></td>
</tr>
<tr>
<td>내용</td>
<td><textarea name=content cols=60 rows=20><%=rs.getString("content")%></textarea></td>
</tr>
<tr>
<td>이메일</td>
<td><input type=text name=email value=<%=rs.getString("email")%>></td>
</tr>
<tr>
<td>성별</td>
<td>
<input type=radio name=sex value=0>남자
<input type=radio name=sex value=1>여자
</td>
</tr>
<tr>
<td>음식취향</td>
<td>
<input type=checkbox name=food value=1>참치김밥
<input type=checkbox name=food value=2>그냥김밥
<input type=checkbox name=food value=3>치즈깁밥
<input type=checkbox name=food value=4>카레김밥
<input type=checkbox name=food value=5>짜장김밥
<input type=checkbox name=food value=6>피자김밥
<input type=checkbox name=food value=7>제육김밥
<input type=checkbox name=food value=8>꼬마김밥
<input type=checkbox name=food value=9>계란김밥
</td>
</tr>
<tr>
<td>주소</td>
<td>
<select name=juso>
<option value=1>서울</option>
<option value=2>경기도</option>
<option value=3>강원도</option>
<option value=4>충청도</option>
<option value=5>경상도</option>
<option value=6>전라도</option>
<option value=7>울릉도</option>
<option value=8>제주도</option>
<option value=9>독도</option>
</select>
</td>
</tr>
<tr>
<td colspan=2><input type=submit value=전송하기>
<input type=hidden name=id value="<%=id%>"></td>

</tr>

</table>
</form>
</body>
</html>
<%
stmt.close();
conn.close();
%>