<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<%    //DB오픈 

  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement(); 
  request.setCharacterEncoding("utf-8");
  String name=request.getParameter("name");
  String email=request.getParameter("email");
    //id_search.jsp는 아이디를 이름과 이메일로 찾는다

    //이름과 이메일을 request.
    //member 테이블에 검색하는 쿼리 -> 있다면 아이디를 보여줌
    String sql="select * from member where name='"+name+"' and email='"+email+"'";
    ResultSet rs=stmt.executeQuery(sql);
    
    //레코드를 다음으로 이동-> true,false : 레코드 유무
    if(rs.next())
    {    //존재할경우 -> 아이디를 보여준다.=> AJAX로 바꿀예정
//     	   response.sendRedirect("id_view.jsp");
    	  out.print("<b style='color:blue'>"+rs.getString("userid")+"</b>");
    }
    else
    {
       // 아니면 경고창출력 후 search.jsp로 이동 
        out.println("<b style='color:red'>id데이터 불일치</b>");
    }

    %>
