<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db���� ������ �������
Statement stmt=conn.createStatement(); //stmt ��� �������� ������ ���� ��ΰ� ����ִ�.

String id=request.getParameter("id");

String sql="select * from guest where id="+id;

ResultSet rs;
rs=stmt.executeQuery(sql);
//rs��ü�� �����ϰ� ���� rs.next ���ִ� ���� ����� ����!

rs.next();


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
td{
border: 1px solid black;
}
</style>
<body>
<form method=post action="update_ok.jsp">
<table>
<tr>
<td>�̸�</td>
<td> <%=rs.getString("name")%></td>
</tr>
<tr>
<td>����</td>
<td><input type=text name=title size=40 value="<%=rs.getString("title")%>"></td>
</tr>
<tr>
<td>����</td>
<td><textarea cols=40 rows=5 name=content> <%=rs.getString("content")%> </textarea></td>
</tr>
<tr>
<td><input type=submit value=����></td>
<td></td>
</tr>
</table>
</form>

</body>
</html>