<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement(); //������ ���� ��Ű�� ��ü

ResultSet rs;// ������ ���� ��ü

String id=request.getParameter("id");//form�� ����� ���� �θ��� ����
String sql="select * from guest where id="+id; //���� �����ͺ��̽��� ���� ���Ѿ���

rs=stmt.executeQuery(sql);  //�����ͺ��̽��� rs��ü�� �־��ذ�

rs.next();//�������� ���ڵ�� ���� �ϳ��̱� ������ rs.next()�� �ϳ��� �־��ذ�


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
table td {
  background: skyblue;
  border: 3px solid pink;
  font-size:15px;
  letter-spacing: 2px;
  padding:5px;
  border-spacing:10px;
  border-radius: 5px;
}
table {
padding-top:360px;
border: 0px solid black;
margin: auto;

}
body{
background-color: black;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}

</style>
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
     <tr>
     <td colspan=2>
     <a href="delete.jsp?id=<%=rs.getString("id") %>">����</a>
     <a href="update.jsp?id=<%=rs.getString("id") %>">����</a>
     <a href="listafter.jsp">�����</a>
     </td>
     </tr>
   </table>

 


</body>
</html>