<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
  #section #right #tour {
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
        <li> <a href="../tour/tour_list.jsp"> 여행후기 </a> </li>
        <li> QnA </li>
      </ul>
    </div> 
    <div id=right>
      <div id=tour style="margin-left:150px"> 여행후기 </div>
      <form method=post action=tour_write_ok.jsp enctype=multipart/form-data>
        <table width=600 align=center>
         <caption> <h3> 글쓰기 </h3></caption>
         <tr>
          <td> 제 목 </td>
          <td> <input type=text name=title size=40> </td>
         </tr>
         <tr>
          <td> 작성자 </td>
          <td> <input type=text name=name> </td>
         </tr>
         <tr>
          <td> 내용 </td>
          <td> <textarea cols=40 rows=6 name=content></textarea> </td>
         </tr>
         <tr>
          <td> 그림 </td>
          <td> <input type=file name=fname> </td>
         </tr>
       
         <tr>
          <td colspan=2 align=center> <input type=submit value=저장하기> </td>
         </tr>
        </table>
      </form>
    </div>
</div>
<%@ include file="../bottom.jsp" %>

































