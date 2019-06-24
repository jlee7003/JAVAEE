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
      
  String userid=request.getParameter("userid");
  //=> form의 action과 jsp파일이 연결되어 연결한 파일인 login.jsp의 userid 값을 login_ok.jsp 파일에 저장 
  
  String pwd=request.getParameter("pwd");
//아이디와 비밀번호가 같아야 조건에 성립하는 쿼리문 작성
   String sql="select * from member where userid='"+userid+"' and pwd='"+pwd+"'";

//쿼리문을 실행시켜 resultSet으로 결과를 가져오기
ResultSet rs=stmt.executeQuery(sql);
if(rs.next()) //레코드가 있으면 true 없으면 false
{//out.println("로그인 성공"); 로그인에 성공하면 세션변수를 만든다.
 session.setAttribute("userid",rs.getString("userid"));
 session.setAttribute("name",rs.getString("name"));

 response.sendRedirect("../main/index.jsp");
 // 앞의 앖이 세션변수 (전역변수 홈페이지에 들어가 있는 동안에는 안사라짐,서버안에서 만들어진 변수를 의미) 
 // 아무곳에서나 불러도 괜찮음, 앞에는 변수의 이름 뒤는 변수의 값
}

else
response.sendRedirect("login.jsp"); //위치 이동


rs.close();
stmt.close();
conn.close();





%>
