<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.sql.*" %>  
<%@page import="java.io.File" %>
<% 

  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  PreparedStatement pstmt=null;
  Statement stmt=conn.createStatement();
  String path="C:/Users/channy/git/repository2/pension/WebContent/tour/img";
  int max=1024*1024*10;
  MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
  String id=multi.getParameter("id");
  String name=multi.getParameter("name");
  String title=multi.getParameter("title");
  String content=multi.getParameter("content");
  String fname=multi.getFilesystemName("fname"); // 실제저장되는 이름
   
  if(fname != null)
  {
    String sql="update tour set name=?, title=?, content=?, fname=? where id=?";
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    pstmt.setString(4, fname);
    pstmt.setString(5,id);
    
    sql="select fname from tour where id="+id;
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
   
    File f=new File("C:/Users/channy/git/repository2/pension/WebContent/tour/img/"+rs.getString("fname"));
   
    if(f.exists())
  	 f.delete(); 
    //out.print("c");
  }
  else
  {
    String sql="update tour set name=?, title=?, content=? where id=?";
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, title);
    pstmt.setString(3, content);
    pstmt.setString(4,id); 
    //out.print("d");
  }

 

   pstmt.executeUpdate();
   
   response.sendRedirect("tour_list.jsp");
   
   pstmt.close();
   conn.close();
%>



