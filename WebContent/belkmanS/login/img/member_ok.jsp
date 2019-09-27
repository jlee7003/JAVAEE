<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="belkman.Dto.Dto" %>   
<%
   request.setCharacterEncoding("utf-8");

   String aa="jdbc:mysql://localhost:3307/belkman?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
   
%>
<jsp:useBean id="dto" class="belkman.Dto.Dto">
  <jsp:setProperty name="dto" property="*"/>
</jsp:useBean>
 

<%
   out.print(dto.getName());
   out.print(dto.getBirth());
   out.print(dto.getJuso1());
   /* 
   String sql="insert into member(gubun, userid, pwd, pwd_qu, pwd_an";
   sql=sql+", name, zip, juso1, juso2, phone, hphone, email, sung, birth";
   sql=sql+", chk1, chk2, chk3, chk4, writeday) ";
   sql=sql+"value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())";
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1,gubun);   
   pstmt.setString(2,userid);   
   pstmt.setString(3,pwd);   
   pstmt.setString(4,pwd_qu);   
   pstmt.setString(5,pwd_an);   
   pstmt.setString(6,name);   
   pstmt.setString(7,zip);   
   pstmt.setString(8,juso1);
   pstmt.setString(9,juso2);   
   pstmt.setString(10,phone);   
   pstmt.setString(11,hphone);   
   pstmt.setString(12,email);   
   pstmt.setString(13,sung);   
   pstmt.setString(14,birth);   
   pstmt.setString(15,chk1);   
   pstmt.setString(16,chk2);   
   pstmt.setString(17,chk3);   
   pstmt.setString(18,chk4);
   pstmt.execute(); */
   
%>
 