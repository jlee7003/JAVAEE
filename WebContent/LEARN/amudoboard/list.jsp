<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
 <%   
    	String aa = "jdbc:mysql://localhost:3307/amudo?useSSL=false";
	String bb = "root";
	String cc = "1234";
	Connection conn = DriverManager.getConnection(aa, bb, cc);
	Statement stmt = conn.createStatement();

	//페이지가 시작되는 인덱스 값이 결정 되어야 함
	//1page-> 0, 2page -> 10....
	int start;
	int Page=0;
	
	if(request.getParameter("page")==null)
	{
		start=0; //1page-> 가장 처음 접근할때 : page 값을 넘기지 말아야 할때
		Page=1;
	}
	else{
	//사용자가 원하는 페아자 값이 request된다.
	Page=Integer.parseInt(request.getParameter("page")); //인덱스 값으로 변경시켜주어야 함
	start=(Page-1)*10;//사용자가 원하는 페이지에 해당하는 인덱스 값
	
	}
	String sql="select * from board order by id desc limit "+start+",10";//내림차순 desc
	ResultSet rs=stmt.executeQuery(sql);

	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<table border=2 align=center width=600 cellspacing=0>
<caption><h2>계시판</h2></caption>
<tr>
<td>name</td>
<td>title</td>
<td>read num</td>
<td>writeday</td>
</tr>
<%
//레코드 출력
 //rs 객체를 만든  후에 처음 실행하면 첫번쨰 레코드로 이동
  while(rs.next())
 {
	 %>
<tr>
<td> <%=rs.getString("name") %></td>
<td> <a href="rnumadd.jsp?id=<%=rs.getInt("id")%>"> <%=rs.getString("title") %> </a></td>
<td> <%=rs.getString("rnum") %></td>
<td> <%=rs.getString("writeday") %></td>
</tr>
<%
 }
%>
<tr>
<td colspan=4 align=right>
<a href="write.jsp">글쓰기</a>
</td>
</tr>
<tr>
<td colspan=4 align=center>
<% 
if(Page!=1)
{
	%>
	
<a href="list.jsp?page=<%=Page-1%>">이전페이지</a>

<%
}
//1page~10page 사이에 존재한다면 1start=1, pend=10
//11page~20page 사이에 존재한다면 1start=11, pend=20
//21page~30page 사이에 존재한다면 1start=21, pend=30

int pstart;
int pend;


pstart=(int)Page/10;
//10,20,30...은 원하는 값보다 1이 더 높다->
if(Page % 10 == 0)
{pstart=pstart-1;}
pstart=Integer.parseInt(pstart+"1");
pend=pstart+9;

for(int i=pstart;i<=pend;i++)
{
%>

<a href="list.jsp?page=<%=i%>"><%=i%></a>
<%
}
%>
<a href="list.jsp?page=<%=Page+1%>">다음페이지</a>
</td>
</tr>
</table>
</body>
</html>
<%
stmt.close();
conn.close();
%>