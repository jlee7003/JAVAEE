<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="java.sql.*" %> 
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt = conn.createStatement(); 
ResultSet rs;

String id=request.getParameter("id"); // ������ �ϴ� ���ڵ��� id��
String sql="select * from guest where id="+id;
// where���ǿ� ���� id���� ��ġ�ϴ� �ϳ��� ���ڵ常 �����´�..
rs=stmt.executeQuery(sql);

rs.next(); //������ ������ ���� ���ü� �ְ�
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <table width=500 border=1>
     <tr>
       <td> �̸� </td>
       <td> <%=rs.getString("name") %> </td>
     </tr>
     <tr>
       <td> ���� </td>
       <td> <%=rs.getString("title") %> </td>
     </tr>
     <tr>
       <td> ���� </td>
       <td> <%=rs.getString("content") %> </td>
     </tr>
   </table>
</body>
</html>













