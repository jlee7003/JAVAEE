<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement(); 
  
  // 입력양식의 값을 가져오기
  request.setCharacterEncoding("utf-8");
  //수정할 입력값을 가져오기 
  
  //수정할 쿼리를 작성
  
  //수정 쿼리 실행
  
  //수정 후 update.jsp로 이동
  String pwd=request.getParameter("pwd");
  String email=request.getParameter("email");
  //테이블에 있는 비밀번호 가져오기
    String sql="select * from member where userid='"+session.getAttribute("userid")+"'";
  // ResultSet에 가져오기
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();
  
  if(pwd.equals(rs.getString("pwd")))//문자열을 비교할떄는 ==대신에 equals 사용
  {                             //==-> 자료형 비교일때,단순비교 equals -> 객체비교할떄,속성과 메소드까지 비교,스트링객체 안에 있는 메소드
  sql="update member set email='"+email+"' where userid='"+session.getAttribute("userid")+"'";
  
  stmt.executeUpdate(sql);
  response.sendRedirect("update.jsp");
  }
  else
  {
	  %>
	  <script>
	    alert("비밀번호가 틀립니다.");
	    location="update.jsp";
	  </script>
	  <%
  }
  %>