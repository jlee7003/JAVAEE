<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>      
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%> <!-- YYYY-MM-DD 형식을 위해 -->
<%
   // write_ok.jsp => 폼의 입력값을 DB에 저장해주는 역할
   // 답글 등록하기
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
   String ref=request.getParameter("ref");
   String redel=Integer.parseInt(request.getParameter("redel"))+1+"";
   String depth=Integer.parseInt(request.getParameter("depth"))+1+""; //depth 와 seq 1씩 증가
 int temp= Integer.parseInt(request.getParameter("seq"))+1;
String seq=temp+"";
String sql="update qna set seq=seq+1 where seq>="+temp+" and ref="+ref; //기존의 temp보다 큰수를 1씩 더한다.
stmt.executeUpdate(sql); //update가 수행되어 seq값이 바뀐다.
   //지금들어갈 seq 보다 크거나 같은 레코드의 seq 값을 전부+1
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
   pstmt.setString(9,ref); //ref -> 그룹 번호,질문글의 ref를 가지고 온다
   pstmt.setString(10,depth);//depth -> 답글 깊이,질문 글보다 +1 깊이가 1증가해야함
   pstmt.setString(11,seq);//seq -> 답글들의 순서,질문 글보다 +1 순서가 이어져야하니
   pstmt.setString(12,redel);
   
   // 쿼리를 실행
   pstmt.executeUpdate();
   
   // Connection,Statement 객체의 해제
   pstmt.close();
   conn.close();
   stmt.close();
   
   response.sendRedirect("qnalist.jsp");
%>    
 
 