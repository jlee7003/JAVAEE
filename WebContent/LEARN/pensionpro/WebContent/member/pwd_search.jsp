<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>      
<%
  // pwd_search.jsp는 비밀번호를 아이디 이름과 이메일을 가지고 찾는다..
  
  // DB오픈
   String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc); 
   Statement stmt=conn.createStatement();
  // 아이디,이름과 이메일을 request
   request.setCharacterEncoding("utf-8");
   String userid=request.getParameter("userid");
   String name=request.getParameter("name");
   String email=request.getParameter("email");
  
  // member 테이블에 검색(아이디,이름,이메일) 하는 쿼리
   String sql="select * from member where name='"+name+"' and ";
   sql=sql+" email='"+email+"' and userid='"+userid+"'";
   ResultSet rs=stmt.executeQuery(sql);
   
   if(rs.next()) // 레코드를 다음으로 이동 => true,false : 레코드유무
   { 
  // 존재할경우 => 아이디를 보여주는 페이지 이동 => AJAX로 바꿀예정
       out.println("<b style='color:blue'>"+rs.getString("pwd")+"</b>"); 
   }
    else
   {
  // 아니면 경고창출력 후 search.jsp로 이동 
      out.println("<b style='color:red'> 데이터 불일치 </b>");
   }
%>    
