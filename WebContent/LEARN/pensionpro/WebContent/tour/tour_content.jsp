<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>   
<% // content.jsp
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
 
  // id값 읽어오기
  String id=request.getParameter("id");
  // 출력할 하나의 레코드를 읽어오는 쿼리 작성
  String sql="select * from tour where id="+id;
  // ResultSet으로 가져오기
  ResultSet rs=stmt.executeQuery(sql);
  rs.next(); // 첫번재 레코드로 이동
%>  
 
<%@ include file="../top.jsp" %>  
 <style>
  #section {
    width:1200px;
    height:600px;
    margin:auto;
  }
  #section #left { /* 왼쪽 메뉴 나오는 부분 */
    width:300px;
    height:600px;
    float:left;
  }
  #section #left li {
    width:220px;
    height:60px;
    list-style-type:none;
    border-bottom:1px solid #dddddd;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:14px;
  }
  #section #right { /* 공지사항 리스트 나오는 부분 */
    width:900px;
    height:600px;
    float:left;
  }
  #section #right #gong {
    height:60px;
    font-size:34px;
    margin-left:45px;
    margin-top:20px;
  }
  #section #right #first td {
    height:40px;
    border-top:2px solid black;
    border-bottom:1px solid black;
    font-size:14px;
  }
  #section #right #second td {
    height:30px;
    border-bottom:1px solid #dddddd;
    font-size:13px;
  }
  #section #right #second td a {
    text-decoration:none;
    color:black;
  }
  
 </style>
  <div id=section>
    <div id=left> <!-- 왼쪽 메뉴(공지사항,게시판,갤러리,QnA)  -->
      <ul>
        <li> 로고2 </li>
        <li> <a href="../gong/gong_list.jsp"> 공지사항 </a></li>
        <li> <a href="../gesipan/list.jsp"> 게시판 </a> </li>
        <li> <a href="../tour/tour_list.jsp"> 여행후기 </a></li>
        <li> QnA </li>
      </ul>
    </div> 
    <div id=right> <!-- 커뮤니티내에서는 현재태그 안의 내용만 바뀐다 -->
      <div id=gong> 게시판 </div>
      <table width=700 align=center>
       <tr height=30>
        <td width=70> 작성자 </td>
        <td> <%=rs.getString("name") %> </td>
        <td width=70> 작성일 </td>
        <td> <%=rs.getString("writeday") %></td>
        <td width=70> 조회수 </td>
        <td> <%=rs.getString("rnum") %></td>
       </tr>
       <tr height=30>
        <td width=70> 제목 </td>
        <td colspan=5> <%=rs.getString("title") %> </td>
       </tr>
       <tr height=300>
        <td width=70> 내용 </td>
        <td colspan=5>
           <img src="img/<%=rs.getString("fname")%>" width=400> <br> 
           <%=rs.getString("content").replace("\r\n","<br>") %> 
        </td>
       </tr>
       <tr height=30>
        <td colspan=6 align=center>
         <a href="tour_update.jsp?id=<%=id%>"> 수정 </a>
         <a href="tour_delete.jsp?id=<%=id%>"> 삭제 </a>
         <a href="tour_list.jsp"> 목록 </a>
        </td>
       </tr>
      </table>
    </div>
  <%-- <div id=del_form> <!-- 삭제할때 사용자가 비밀번호를 입력하는 폼 -->
    <form method=post action=delete.jsp>
    <input type=hidden name=id value=<%=id%>>
      비밀번호 <input type=password name=pwd> <input type=submit value=삭제>
    </form>
  </div> --%>
 <script>
  /* function del()
  {
	  document.all.del_form.style.visibility="visible"; //보이기
  } */
 </script>
 <style>
   #del_form {
     position:absolute; /* 절대좌표 */
     left:600px;
     top:600px;   /* 레이어의 왼쪽,상단으로부터의 거리 */
     width:200px;
     height:50px;  /* 레이어의 가로,세로 길이 */
     background:#eeeeee;
     visibility:hidden;  /* 보이기속성 : 숨겨라 */
   }
 </style>
<%@ include file="../bottom.jsp" %>
<%
stmt.close();
conn.close();
%>




















