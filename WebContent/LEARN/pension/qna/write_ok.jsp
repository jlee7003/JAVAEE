<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>      
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%>
<%
   // write_ok.jsp => 폼의 입력값을 DB에 저장해주는 역할

   // DB연결 => Connection(연결), Statement(쿼리실행)
   String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
   Statement stmt=conn.createStatement();

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
   
   String sql="select max(ref) as num from qna"; //qna에서 num값이 가장 큰것을 검색하기 
   ResultSet rs=stmt.executeQuery(sql);   
   rs.next();

   String ref=rs.getInt("num")+1+"";//가장 높은 ref값에 숫자(1)을 더하기
                                    //글을 쓸때 마다 특정 ref값을 아이디  처럼 중복되지 않도록 설정하기 위해
//    out.print(rs.getInt("num"));
   //null 값을 getInt()로 부르면 0이 나옴
   // 실행할 쿼리를 생성

   
   // ex) insert into 테이블명(필드명,필드명) values('값',값);
   sql="insert into qna(title,content,name,age,sung,pwd,rnum,writeday,ref,depth,seq,redel) ";
   sql=sql+" values(?,?,?,?,?,?,?,?,?,?,?,?)";
   
  
    //ref의 값을 나타내기
    //ref는 그룹의 값을 나타낸다 ->새로운 그룹이 발생되면 
    //기존의 가장 높은 값에다가 +1 해서 부여한다.
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1,title);
   pstmt.setString(2,content);
   pstmt.setString(3,name);
   pstmt.setString(4,age);
   pstmt.setString(5,sung);
   pstmt.setString(6,pwd);
   pstmt.setString(7,"0");
   pstmt.setString(8,writeday);
   pstmt.setString(9,ref); //ref -> 그룹 번호
   pstmt.setString(10,"1");//depth -> 답글 깊이 ,질문이므로 무조건 depth와 seq는 1
   pstmt.setString(11,"1");//seq -> 답글들의 순서
   pstmt.setString(12,"1");//redel -> 삭제번호
   
   
   // 쿼리를 실행
   pstmt.executeUpdate();
   
   // Connection,Statement 객체의 해제
   pstmt.close();
   conn.close();
   stmt.close();
   
   response.sendRedirect("qnalist.jsp");
%>    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 