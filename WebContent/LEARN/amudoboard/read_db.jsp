<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    <%//read_db.jsp -> db에 있는 내용을 가져와서 html에 출력
    //그냥 출력, 계산을 통한 출력
   //db-> 입력,출력,수정,삭제
   //출력-> 쿼리중 select 사용
   //db에 연결하는 문서는 무조건 db연결 클래스가 필요
   //db연결 connection(연결), Statement(명령문)
   //입력-> 쿼리중 insert 사용
   //수정-> 쿼리중 update 사용
   //삭제-> 쿼리중 delete 사용
   String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();
	
	//원하는 데이터 읽어오기 (select)
	String sql="select * from board";//board라는 테이블의 모든 레코드를 가져와라
	ResultSet rs=stmt.executeQuery(sql); //executeQuery-> select
	//									   executeUpdate-> 나머지
//rs 객체에 접근하여 테이블의 내용을 가지고 온다.
rs.next();
	//레코드를 가리키고 있다
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=rs.getString("name") %>
</body>
</html>