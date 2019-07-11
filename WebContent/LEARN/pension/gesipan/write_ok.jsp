<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	// DB 연결및 쿼리를 사용할수 있는환경
	// Connection , Statement 
	String aa = "jdbc:mysql://localhost:3307/pension?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	//입력값 가져오기
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String writeday = sdf.format(today);
	String blood = request.getParameter("blood");
	String birth = request.getParameter("birth");//선택된 옵션의 값이 넘어옴
	
	//out.print(request.getParameter("hobby")); //값이 하나 밖에 전달 되지 않음 그렇기에 다른 것을 씀
	String[] hobby=request.getParameterValues("hobby");
    String hob="";
    //hobby는 문자열배열이고 그 값을 hob에 줬으므로 hob을 이용
    
    for(int i=0;i<hobby.length;i++)
    	hob=hob+hobby[i]+","; //배열값[]+, 나중에 split 할때 사용
 
   String sql="insert into gesipan(name,title,pwd,content,blood,hobby,birth,writeday) values('"+name+"','"+title+"','"+pwd+"','"+content+"',"+blood+",'"+hob+"','"+birth+"','"+writeday+"')";

   stmt.executeUpdate(sql);
   response.sendRedirect("gesipan.jsp");
   
   stmt.close();
	conn.close();
	%>