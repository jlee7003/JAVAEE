<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  // gong_content.jsp => 1개의 레코드만 가져와서 전부 보여준다..
  // 가져올 레코드의 기본키인 id값을 가져오기
  String id=request.getParameter("id");
  // 쿼리 작성
  String sql="select * from gongji where id="+id;
  // ResultSet에 해당 레코드 가져오기
  ResultSet rs=stmt.executeQuery(sql); // 하나의 레코드만 가져온다..
  rs.next(); // 첫번째 레코드 접근
%>  
<%@ include file="../top.jsp" %>  
  <div id=section>
     <table>
      <tr>
        <td> <%=rs.getString("title") %> </td>
      </tr>
      <tr>
        <td>
           작성자 <b>관리자</b>
       <%=rs.getString("writeday") %>
        조회 <%=rs.getString("rnum") %> 
        </td>
      </tr>
      <tr>
        <td> 버튼이 들어갈 공간 </td>
      </tr>
      <tr>
        <td> <%=rs.getString("content") %></td>
      </tr>
     </table>
  </div>
<%@ include file="../bottom.jsp" %>  











