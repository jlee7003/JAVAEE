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
    Statement stmt=conn.createStatement();
    
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
    String sql="select pwd from board where id="+id;
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
  // 비밀번호가 일치하면 수정  
    if(pwd.equals(rs.getString("pwd")))
    {
       sql="update board set title='"+title+"',content='"+content;
       sql=sql+"',name='"+name+"',sung="+sung+",age="+age;
       sql=sql+" where id="+id;
       // set title='값', content='값', name='값', sung=값, age=값
       stmt.executeUpdate(sql); 
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
   stmt.close();
   conn.close();
%>    
















