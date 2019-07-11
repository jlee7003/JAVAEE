<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<%
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  
  // 투표 레코드를 읽어오기
  String sql="select * from vote where id=1";
  // ResultSet에 가져오기
  ResultSet rs=stmt.executeQuery(sql);
  rs.next();
  
  // 전체투표수를 계산
  double total=rs.getInt("a1")+rs.getInt("a2")+rs.getInt("a3");
  total=total+rs.getInt("a4")+rs.getInt("a5")+rs.getInt("a6")+rs.getInt("a7");
  
  // 각 항목의 백분율을 구하기
  int a1=(int)((rs.getInt("a1")/total)*100);
  int a2=(int)((rs.getInt("a2")/total)*100);
  int a3=(int)((rs.getInt("a3")/total)*100);
  int a4=(int)((rs.getInt("a4")/total)*100);
  int a5=(int)((rs.getInt("a5")/total)*100);
  int a6=(int)((rs.getInt("a6")/total)*100);
  int a7=(int)((rs.getInt("a7")/total)*100);
  
 
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
  #aa,#bb,#cc,#dd,#ee,#ff,#gg {
    width:0px;
    height:25px;
    background:blue;
  }
  #aa {
    width:<%=a1*4%>px;  /* 4를 곱하는 이유는 그래프의 크기 */
  }
  #bb {
    width:<%=a2*4%>px;
  }
  #cc {
    width:<%=a3*4%>px;
  }
  #dd {
    width:<%=a4*4%>px;
  }
  #ee {
    width:<%=a5*4%>px;
  }
  #ff {
    width:<%=a6*4%>px;
  }
  #gg {
    width:<%=a7*4%>px;
  }
</style>
</head>
<body>
   <table width=330>
     <caption><h3> 좋아하는 안주는 ? </h3></caption>
     <tr>
      <td width=100> 생선회 </td>
      <td width=180> <div id=aa></div> </td>
      <td> <%=a1%>% </td>
     </tr>
     <tr>
      <td> 소곱창 </td>
      <td> <div id=bb></div> </td>
      <td> <%=a2%>% </td>
     </tr>
     <tr>
      <td> 두부김치 </td>
      <td> <div id=cc></div> </td>
      <td> <%=a3%>% </td>
     </tr>
     <tr>
      <td> 양꼬치 </td>
      <td> <div id=dd></div> </td>
      <td> <%=a4%>% </td>
     </tr>
     <tr>
      <td> 생선초밥 </td>
      <td> <div id=ee></div> </td>
      <td> <%=a5%>% </td>
     </tr>
     <tr>
      <td> 감자탕 </td>
      <td> <div id=ff></div> </td>
      <td> <%=a6%>% </td>
     </tr>
     <tr>
      <td> 춘봉족발 </td>
      <td> <div id=gg></div> </td>
      <td> <%=a7%>% </td>
     </tr>
   </table>
</body>
</html>


















