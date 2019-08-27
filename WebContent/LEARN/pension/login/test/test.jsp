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
    String sql="create table pkc(aa int)";
    ResultSet rs=stmt.executeQuery(sql);
    stmt.close();
    conn.close();
    out.print("하하하"); //태그도 다 날라감(전송됨)
    
    %>
<%-- <html>
<head>

</head>
<body>
</body>
</html>
<%
// if(true)
// 	out.print("1");
// else
// 	out.print("0");
// //1일 떄는 어떻고 0일 때는 어떤지 우리가 판단해서 작업할 수 있음

%>

<div> <input type=text name=name> </div> --%>
