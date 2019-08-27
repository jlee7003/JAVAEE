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
  String userid=request.getParameter("userid");
  String name=request.getParameter("name");
  String email=request.getParameter("email");
    //id_search.jsp는 pwd를 이름과 이메일,아이디로 찾는다

    //이름과 이메일을 request.
    //member 테이블에 검색하는 쿼리 -> 있다면 pwd를 보여줌
    String sql="select * from member where userid='"+userid+"' and name='"+name+"' and email='"+email+"'";
    ResultSet rs=stmt.executeQuery(sql);
    
    //레코드를 다음으로 이동-> true,false : 레코드 유무
    if(rs.next())
    {    //존재할경우 -> 비밀번호를 보여준다.
//     	   response.sendRedirect("pwd_view.jsp");
    	  out.print("<b style='color:blue'>"+rs.getString("pwd")+"</b>");
    }
    else
    {
    	   out.println("<b style='color:red'>pwd데이터 불일치</b>");
    }

    %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>