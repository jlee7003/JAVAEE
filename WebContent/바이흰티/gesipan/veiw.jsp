<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.sql.*" %>

<%
String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
String bb="root";
String cc="1234";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// db와의 접속이 만들어짐
Statement stmt=conn.createStatement();

request.setCharacterEncoding("utf-8");
ResultSet rs;
String id=request.getParameter("id");
String sql="select * from board2 where id="+id;
rs=stmt.executeQuery(sql);  
rs.next();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		 <table width=500 border=1>
     <tr>
       <td> 제목 </td>
       <td> <%=rs.getString("title") %> </td>
     </tr>
     <tr>
       <td> 작성자 </td>
       <td> <%=rs.getString("name") %> </td>
     </tr>
     <tr>
       <td> 작성날짜 </td>
       <td> <%=rs.getString("writeday") %> </td>
     </tr>
     <tr>
       <td> 조회수 </td>
       <td> <%=rs.getString("rnum") %> </td>
     </tr>
     <tr>
     <td>전화번호</td>
       <td><%= rs.getString("phone1")%> <%= rs.getString("phone2")%> <%= rs.getString("phone3")%></td>
     </tr>
     <tr>
       <td > 주량 </td>
        <%
            String blo="";
            switch(rs.getString("ju")) // 1~4까지의 값
            {
               case "1": blo="소주 3병"; break;
               case "2": blo="소주 2병"; break;
               case "3": blo="소주 1병"; break;
               case "4": blo="소주 반병"; break;
               case "5": blo="X"; break;
            }
        %>
        
      
        <td> <%=blo%>  </td>
        
        
    
      
   </tr>
     <tr>
       <td colspan=2 id=idid> 내용 </td>
     </tr>
     <tr>
     <td colspan=2 id=content>
      <%=rs.getString("content").replace("\r\n","<br>") %>
     </td>
     </tr>
     <tr>
     <td colspan=2>
       <a href="index.jsp">목록</a>
     </td>
     </tr>
   </table>
	</div>

	</div>
	 <div id=del_form>
    <form method=post action="delete.jsp">
    <input type=hidden name=id value=<%=id%>>
      비밀번호 <input type=password name=pwd> <input  type=submit value=삭제>
       <a href=index.jsp><input  type=button value=닫기></a>
    </form>
  </div>
</body>
</html>