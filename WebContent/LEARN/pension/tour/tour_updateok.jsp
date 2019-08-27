<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*" %>      

<%
  // DB 연결및 쿼리를 사용할수 있는환경
  // Connection , Statement 
String path="C:/Users/alfo1-3/eclipse-workspace3/TIL/WebContent/LEARN/pension/tour/tour_jpg";
int max=1024*1024*10;
MultipartRequest multi=new MultipartRequest(request,path,max
		,"utf-8",new DefaultFileRenamePolicy());

String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";
Connection conn = DriverManager.getConnection(aa,bb,cc);
Statement stmt=conn.createStatement();
  
  request.setCharacterEncoding("utf-8");
  String id=multi.getParameter("id");
  String name=multi.getParameter("name");
  String title=multi.getParameter("title");
  String content=multi.getParameter("content");
  String fname=multi.getFilesystemName("fname");
  
  if(fname != null) //fname은 파일을 선택하지 않으면 null 값
  {
	String i  
  }
  String sql="update tour set title='"+title+"', content='"+content+"', name='"+name+"', fname='"+fname+"' where id="+id;
  out.print(sql);
  stmt.executeUpdate(sql);

  response.sendRedirect("tour_content.jsp?id="+id);
  %>