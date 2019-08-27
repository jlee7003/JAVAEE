<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.util.Date" %>  <!-- 날짜를 구하기 -->
<%@page import="java.text.SimpleDateFormat"%> <!-- YYYY-MM-DD 형식을 위해 -->
<%@page import="java.sql.*" %>    
<%
   String path="C:/Users/channy/git/repository2/pension/WebContent/tour/img";
   int max=1024*1024*10;
   MultipartRequest multi=new MultipartRequest(request,path,max
		   ,"utf-8",new DefaultFileRenamePolicy());
   
   String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
    
 
   // 파일과 입력값 읽어오기		
   String name=multi.getParameter("name");
   String title=multi.getParameter("title");
   String content=multi.getParameter("content");
   String fname=multi.getFilesystemName("fname"); // 실제저장되는 이름
   Date today=new Date(); // 현재 날짜 객체 생성
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
   // 표현할 날짜 형식의 객체를 생성
   String writeday= sdf.format(today); // today날짜를 넣어주면 2019-05-05으로 출력
   
   // 쿼리 작성
   String sql="insert into tour(name,title,content,fname,writeday) values(?,?,?,?,?)";
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1, name);
   pstmt.setString(2, title);
   pstmt.setString(3, content);
   pstmt.setString(4, fname);
   pstmt.setString(5, writeday);
   pstmt.executeUpdate();
   
   response.sendRedirect("tour_list.jsp");
   
   pstmt.close();
   conn.close();
%>



