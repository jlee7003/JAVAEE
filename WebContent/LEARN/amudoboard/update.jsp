<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String sql="select * from board where id="+id;
ResultSet rs= stmt.executeQuery(sql);

rs.next();



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check()
{


document.leh.sung[<%=rs.getString("sung")%>].checked=true;


<%-- document.leh.age.selectedIndex=<%=rs.getString("age")%>; --%>
document.leh.age.options[<%=rs.getString("age")%>].selected=true;

}
</script>
</head>
<body onload=check()>
<form method=post action="update_ok.jsp" name=leh>
<input type=hidden value=<%=id%> name=id>
<table>
<tr>

<td>작성자: <input type=text name=name value="<%=rs.getString("name")%>"> <td>
</tr>
<tr>
<td>제목: <input type=text  name=title value="<%=rs.getString("title")%>"><td>
</tr>
<tr>
<td>
연령:<select name=age>
  <option value=0>10대</option>
  <option value=1>20대</option>
  <option value=2>30대</option>
  <option value=3>40대</option>
  <option value=4>50대</option>
 
  </select>
  <td>
</tr>
<tr>
<td>성별: <input type=radio name=sung value=0>남자
<input type=radio name=sung  value=1>여자 <td>
</tr>
<tr>
<td>내용: <textarea name=content cols=40 rows=5> <%=rs.getString("content")%> </textarea><td>
</tr>
<tr>
<td><input type=submit value=전송>
   비밀번호 <input type=password name=pwd> <p>
      <input type=submit value=수정하기>
<input type=hidden name=id value="<%=id%>">
<!-- 아이디 값을 전송해주기 위해 숨겨놓음 -->
</td>
</tr>
</table>
</form>
</body>
</html>
<%
stmt.close();
conn.close();
%>