<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<% // delete_ok.jsp

   // DB연결
    String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
    String bb="root";
    String cc="1234";
    Connection conn = DriverManager.getConnection(aa,bb,cc); 
    Statement stmt=conn.createStatement();
   // id,pwd값을 읽어오기
   String id=request.getParameter("id");
   String pwd=request.getParameter("pwd");
   String Page=request.getParameter("pwd");
   String ref=request.getParameter("ref");
   String redel=request.getParameter("redel");
   
   String sql="select * from qna where id="+id;
   ResultSet rs=stmt.executeQuery(sql);
   rs.next();
   
   if(pwd.equals(rs.getString("pwd")))
   {
	   sql="delete from qna where ref="+ref+" and redel>="+redel;
	   stmt.executeUpdate(sql);
	   response.sendRedirect("list.jsp?Page="+Page);
   }
   else
   {
	   %>
	   <script>
	   alert("비번이 틀립니다");
	   history.back();
	   </script>
	   
	   <%
	      
   }
   
    %>


</body>
</html>
