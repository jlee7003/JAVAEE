<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@page import="java.sql.*" %><!-- �̰� ����? -->
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv���� ������ �������
Statement stmt=conn.createStatement(); //DB ����



String sql="select * from board"; //��ü �� ������
ResultSet rs; // ���̺����� �о�ͼ� ������ ����  
              // ���̺��� ������ jsp���� �����ϱ� ���� �������� �̵�(ResultSet)
              //rs �������� ���ڵ������ʹ� �׻� ù��° ���ڵ� ���� ����
              //ù��° ���ڵ�� �̵��ϱ� ���� ��ɾ� rs.next(); -> ���� ���ڵ�� �̵�
              //rs���� ������ �о���� ���
              //-> out.println(rs.getString("name"));
rs=stmt.executeQuery(sql);//select ����� ������ ������� rs�� ���� ,�׸����� �ҷ�����


/*rs.next();-> �޼ҵ�� ���ϰ��� ������
  out.println(rs.getString("name"));
  out.println(rs.getString("title"));

  
*/ 

//javascript
%>
<script><!--html-->

</script>
<body>
<h6>EUIHO <br> BOARD</h6>
<table width=500 border=1>
<tr>
 <td> ID</td>
  <td>�̸�</td>
  <td>����</td>
</tr>
<%
while(rs.next()) //���ǿ� ���� ���� ���̸� �ݺ������� ���� �����̸� ���� ����(����)
{	             //���ڵ尡 �ִٸ� �� ���ٸ� ����
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
