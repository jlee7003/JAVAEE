<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>      
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%> <!-- YYYY-MM-DD 형식을 위해 -->
<%
   // write_ok.jsp => 폼의 입력값을 DB에 저장해주는 역할

   // DB연결 => Connection(연결), Statement(쿼리실행)
   String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
      
   // request되는 값의 한글코드처리
   request.setCharacterEncoding("utf-8");
   
   // 입력할 값을 write.jsp에서 가져오기 => request.getParameter()
   // 변수에 저장 => 계산을 하지 않는다면 String에 넣어도 된다.
   // 숫자계산이 있을경우는 숫자로 변형후에 사용해야된다..
   String title=request.getParameter("title");
   String content=request.getParameter("content");
   String name=request.getParameter("name");
   String age=request.getParameter("age");
   String sung=request.getParameter("sung");
   String pwd=request.getParameter("pwd");
   // 사용자가 입력하지 않은값이지만 테이블에 저장할 데이터
   Date today=new Date(); // 현재 날짜 객체 생성
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
   // 표현할 날짜 형식의 객체를 생성
   String writeday= sdf.format(today); // today날짜를 넣어주면 2019-05-05으로 출력
   
   // 실행할 쿼리를 생성
   // ex) insert into 테이블명(필드명,필드명) values('값',값);
   for(int i=1;i<807;i++)
   {
   String sql="insert into board(title,content,name,age,sung,pwd,rnum,writeday) ";
   sql=sql+" values(?,?,?,?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1,title+i);
   pstmt.setString(2,content+i);
   pstmt.setString(3,name+i);
   pstmt.setString(4,age);
   pstmt.setString(5,sung);
   pstmt.setString(6,pwd);
   pstmt.setString(7,"0"+i);
   pstmt.setString(8,writeday);
   
   // 쿼리를 실행
   pstmt.executeUpdate();
   }
   
   // Connection,Statement 객체의 해제
//    pstmt.close();
//    conn.close();
%>    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 