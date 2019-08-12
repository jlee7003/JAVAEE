<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%
 // update_ok.jsp는 비밀번호 체크후 일치하면 수정
  
 // DB연결
    String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
    String bb="root";
    String cc="1234";
    Connection conn = DriverManager.getConnection(aa,bb,cc); 
    
 // 수정할 데이터, id,pwd를 읽어오기
    request.setCharacterEncoding("utf-8");
    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sung=request.getParameter("sung");
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");

  // DB에 있는 비밀번호가 필요
    String sql="select * from board where id = ?";
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setInt(1, 4);
    ResultSet rs=pstmt.executeQuery(sql);
    rs.next();
  // 비밀번호가 일치하면 수정  
    if(pwd.equals(rs.getString("pwd")))
    {
       sql="update board set title=?,content=?,name=?,age=?,sung=? ";
       sql=sql+" where id=?";
       pstmt=conn.prepareStatement(sql);
       pstmt.setString(1,title);
       pstmt.setString(2,content);
       pstmt.setString(3,name);
       pstmt.setString(4,age);
       pstmt.setString(5,sung);
       pstmt.setString(6,id);
       pstmt.executeUpdate(sql); 
       // content.jsp로 이동
       response.sendRedirect("content.jsp?id="+id);
    }
    else
    {
%>
     <script>
       alert("비밀번호가 틀립니다");
       history.back();
     </script>
<%    	
    }
   pstmt.close();
   conn.close();
%>    
















