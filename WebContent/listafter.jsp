<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <%@page import="java.sql.*" %>
<%
String aa="jdbc:mysql://localhost:3306/pension?useSSL=false";
String bb="root";
String cc="apmsetup";    
Connection conn=DriverManager.getConnection(aa,bb,cc);// dv와의 접속이 만들어짐
Statement stmt=conn.createStatement();
ResultSet rs; // 테이블내용을 읽어와서 저장할 공간
String sql="select * from guest";
rs=stmt.executeQuery(sql);//select 명령을 실행한 결과값을 rs에 저장 ,항목으로 불러야함

// 레코드 포인터를 아래로 한칸 내려주는 명령어 두번째 레코드

while(rs.next()) //조건에 따라 실행 참이면 반복문으로 실행 거짓이면 실행 ㄴㄴ
{	

out.println(rs.getString("name"));
out.println(rs.getString("title"));
out.println("<p>");
}
%>