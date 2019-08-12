<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%
 // update.jsp는 수정하고자 하는 레코드를 읽어오기
 // 읽어온 값을 form태그의 입력양식에 값을 넣어주기
 // DB연결
    String aa="jdbc:mysql://localhost:3307/amudo?useSSL=false";
    String bb="root";
    String cc="1234";
    Connection conn = DriverManager.getConnection(aa,bb,cc); 
    Statement stmt=conn.createStatement();
 // 수정할 레코드의 id값 읽어오기
    String id=request.getParameter("id");
    
 // 수정하고자 하는 레코드 하나를 읽어오기
    String sql="select * from board where id="+id;
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
 // 아래에 있는 폼태그에 값을 주기

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <script>
     // 연령, 성별 => 정수의 형태 => 자바스크립트에 넘겨서 작업
   function form_input() // 문서를 읽을대 실행을 해야 된다..
   {
     // 연령 
     // selectedIndex => 선택된option태그의 인덱스번호 => 시작이 0
     document.pkc.age.selectedIndex=<%=rs.getString("age")%>;
     //document.pkc.age.options[<%=rs.getString("age")%>].selected=true;
     // 성별
     document.pkc.sung[<%=rs.getString("sung")%>].checked=true;
   }
 </script>
</head>
<body onload=form_input()>
 <form name=pkc method=post action=update_ok.jsp> 
  <input type=hidden name=id value=<%=id%>>
   제목 <input type=text name=title size=50 value="<%=rs.getString("title")%>"> <p>
   내용 <textarea cols=50 rows=6 name=content><%=rs.getString("content")%></textarea> <p>
   작성자 <input type=text name=name size=8 value="<%=rs.getString("name")%>"> <p>
   연령 <select name=age>
        <option value=0> 10대 </option>
        <option value=1> 20대 </option>
        <option value=2> 30대 </option>
        <option value=3> 40대 </option>
        <option value=4> 50대 </option>
      </select> <p>
      성별 <input type=radio name=sung value=0>남자
        <input type=radio name=sung value=1>여자 <p>
      비밀번호 <input type=password name=pwd> <p>
      <input type=submit value=수정하기>
      </form>
</body>
</html>











