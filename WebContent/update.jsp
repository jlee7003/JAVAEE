<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement(); //������ ���� ��Ű�� ��ü

//������ ���ڵ��� id �� �ޱ�
String id=request.getParameter("id");

//�����ϰ��� �ϴ� ���ڵ��� ���� �о���� ���� ���� -> resultset�� ����
String sql="select * from guest where id="+id;


//������ �����Ͽ� �ش� ���ڵ带 resultset�� ��������
ResultSet rs=stmt.executeQuery(sql);
//��ȭ�� ���� ��-> query ��ȭ�� �ִ� �� -> update

rs.next();//ù ���ڵ�� ����


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
padding-top:200px;
border: 0px solid black;
margin: auto;

}
body{
background-color: black;
color:white;
}
h6{
color: white;
font-size: 100px;
text-align: center;
}

</style>
<body>
<form method=post action="update_ok.jsp">
 <input type=hidden name=id value="<%=id%>">
�̸� : <%=rs.getString("name") %><p>
����<input type=text name=title  size=40 value="<%=rs.getString("title") %>"><p>
����<textarea cols=40 rows=5 name=content> <%=rs.getString("content") %> </textarea><p>
  <input type=submit value=����>
  
  <!-- input type�� ���� ���ϰ� �ϴ� ��
       disabled ��� �±׿� �����ش�.
       
       readonly,onkeydown="return imsi()"  
  
   -->



</form>
</body>
</html>