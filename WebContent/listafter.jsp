<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@page import="java.sql.*" %><!-- �̰� ����? -->
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement();
ResultSet rs; // ���̺����� �о�ͼ� ������ ����
String sql="select * from guest"; //��ü �� ������
rs=stmt.executeQuery(sql);//select ����� ������ ������� rs�� ���� ,�׸����� �ҷ�����

// ���ڵ� �����͸� �Ʒ��� ��ĭ �����ִ� ��ɾ� �ι�° ���ڵ�



/*
''�� sql������ ��ɾ �־��ֱ� ���� �ִ� ���̰� �ڹ� EE������ ������ ���ڿ��� ����ϱ⿡ ������
���ڿ��� ""����ǥ�� �߰��ϴ� ���̴�.
*/

	
	
	
	
/*out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");*/

%> <!-- ����%�� jsp ��ɾ��� ��쿡 ��� ������ ��� ȭ�鿡 ��� ���� �ʴ´�. -->
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
padding-top:0px;
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
<script>

</script>
<body>
<h6>EUIHO BOARD</h6>
<table width=500 border=1  >
<tr>
 <td> ID</td>
  <td>�̸�</td>
  <td>����</td>
</tr>
<%
while(rs.next()) //���ǿ� ���� ���� ���̸� �ݺ������� ���� �����̸� ���� ����
{	
	%>

<tr>
<td> <%=rs.getString("id") %> </td> 
  <td> <%=rs.getString("name") %> </td> 
  <td> <a href="listcontent.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("title") %> </td> 
  <!--equal(=) =out.println()-->
</tr>
<%
}
%>
<tr>
<td colspan=3> <a href="input.html">�۾��� </a></td>
</tr>
</table>
</body>
