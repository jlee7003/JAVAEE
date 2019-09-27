<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>   
<%
   request.setCharacterEncoding("utf-8");

   String aa="jdbc:mysql://localhost:3307/belkman?useSSL=false";
   String bb="root";
   String cc="1234";
   Connection conn = DriverManager.getConnection(aa,bb,cc);
   
   String gubun=request.getParameter("gubun");
   String userid=request.getParameter("userid");
   String pwd=request.getParameter("pwd1");
   String pwd_qu=request.getParameter("pwd_qu");
   String pwd_an=request.getParameter("pwd_an");
   String name=request.getParameter("name");
   String zip=request.getParameter("zip");
   String juso1=request.getParameter("juso1");
   String juso2=request.getParameter("juso2");
   // 전화번호
   String phone=request.getParameter("p1");
   phone=phone+"-"+request.getParameter("p2");
   phone=phone+"-"+request.getParameter("p3");
   // 휴대전화
   String hphone=request.getParameter("hp1");
   hphone=hphone+"-"+request.getParameter("hp2");
   hphone=hphone+"-"+request.getParameter("hp3");
   //이메일
   String email=request.getParameter("email1");
   email=email+"@"+request.getParameter("email2");
   
   String sung=request.getParameter("sung");
   // 생년월일
   String birth=request.getParameter("yy");
   birth=birth+"-"+request.getParameter("mm");
   birth=birth+"-"+request.getParameter("dd");
   
   // 동의 => 체크되어 있지 않으면 null
   String chk1;
   if(request.getParameter("chk1")==null)
	   chk1="0";
   else
	   chk1=request.getParameter("chk1");
   
   String chk2;
   if(request.getParameter("chk2")==null)
	   chk2="0";
   else
	   chk2=request.getParameter("chk2");
   
   String chk3;
   if(request.getParameter("chk3")==null)
	   chk3="0";
   else
	   chk3=request.getParameter("chk3");
   
   String chk4;
   if(request.getParameter("chk4")==null)
	   chk4="0";
   else
	   chk4=request.getParameter("chk4");
   
   String sql="insert into member(gubun, userid, pwd, pwd_qu, pwd_an";
   sql=sql+", name, zip, juso1, juso2, phone, hphone, email, sung, birth";
   sql=sql+", chk1, chk2, chk3, chk4, writeday) ";
   sql=sql+"value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())";
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setString(1,gubun);   
   pstmt.setString(2,userid);   
   pstmt.setString(3,pwd);   
   pstmt.setString(4,pwd_qu);   
   pstmt.setString(5,pwd_an);   
   pstmt.setString(6,name);   
   pstmt.setString(7,zip);   
   pstmt.setString(8,juso1);
   pstmt.setString(9,juso2);   
   pstmt.setString(10,phone);   
   pstmt.setString(11,hphone);   
   pstmt.setString(12,email);   
   pstmt.setString(13,sung);   
   pstmt.setString(14,birth);   
   pstmt.setString(15,chk1);   
   pstmt.setString(16,chk2);   
   pstmt.setString(17,chk3);   
   pstmt.setString(18,chk4);
   pstmt.execute();
   
%>
 