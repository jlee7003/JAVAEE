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
	int Page = 0; //자바 코드안에서는 대문자 Page가 가능

	String last = request.getParameter("");
	if (request.getParameter("Page") == null)//사용자가 첨 들어왔을때
	{
		start = 0; //1page-> 가장 처음 접근할때 : page 값을 넘기지 말아야 할때
		Page = 1;
	} else {
		//사용자가 원하는 페이지 값이 request된다.
		Page = Integer.parseInt(request.getParameter("Page")); //인덱스 값으로 변경시켜주어야 함
		start = (Page - 1) * 10;//사용자가 원하는 페이지에 해당하는 인덱스 값

	}

	//검색하고자 하는 필드와 검색 단어 가져오기
	String cla = request.getParameter("cla");
	String s_word = request.getParameter("cla");
	String sql;

	  if(cla==null)
	    {
	    sql="select * from board order by id desc limit "+start+",10";
	    cla="";
	    s_word=""; // 검색창에 null값을 표시하지 않기 위해 
	    }
	else if (cla.equals("0"))
		sql = "select * from board where title like '%" + s_word + "%' order by id desc limit " + start + ",10";
	else if (cla.equals("1"))
		sql = "select * from board where content like '%" + s_word + "%' order by id desc limit " + start
				+ ",10";
	else
		sql = "select * from board where name like '%" + s_word + "%' order by id desc limit " + start + ",10";
	//sql="SELECT COUNT(*) FROM board";

	ResultSet rs = stmt.executeQuery(sql);

	//1번. 현제 페이지의 색을 다른색으로하기
	//2번. select option을 통해 해당 페이지로 이동
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function search_sub()
	{
		document.all.cla.selectedIndex=<%=cla%>;
	}
	function move_p() {//다른년도와 다른월의 달력을 보여주기
		//년도, 월을 가지고 문서를 호출
		var y = document.all.ppage.value;

		location = "list.jsp?Page=" + y;
	}
</script>
<!-- 
자바스크립트에 select에서 value 값 가져오기

1.<select  id=pp onchange=move_pp(this.value)>
<option></option>
<option></option>
<option></option>
<option></option>
</select>

<script>
function move_list()
{

document.getElementByid("pp").value

}
</script>

<script>
function move_list(val)
{

document.getElementByid("pp").value

}
</script>

 -->
</head>

<body onload=search_sub()>
	<table border=2 align=center width=900 cellspacing=0>
		<caption>
			<h2>계시판<%=Page%></h2>
			<!--  -->
			<form method=post action=list.jsp>
				<select name=cla>
					<!-- 필드  -->
					<option value=0>제목</option>
					<option value=1>내용</option>
					<option value=2>작성자</option>
				</select> <input type=text name=s_word size=8>
				<!-- 내가 찾고자 하는 값 -->
				<input type=submit value=검색>
			</form>
			<!--  -->
		</caption>
		<tr>
			<td>name</td>
			<td>title</td>
			<td>read num</td>
			<td>writeday</td>
		</tr>
		<%
			//레코드 출력
			//rs 객체를 만든  후에 처음 실행하면 첫번쨰 레코드로 이동
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("name")%></td>
			<td><a href="rnumadd.jsp?id=<%=rs.getInt("id")%>&Page=<%=Page%>">
					<%=rs.getString("title")%> <%-- 			 <a href="rnumadd.jsp?id=<%=rs.getInt("id")%>%Page=<%=rs.getInt("id")%> --%>
			</a></td>

			<td><%=rs.getString("rnum")%></td>
			<td><%=rs.getString("writeday")%></td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan=4 align=right><a href="write.jsp">글쓰기</a></td>
		</tr>
		<tr>
			<td colspan=4 align=center style="word-spacing: 10px"><a
				href="list.jsp?page=1&cla=<%=cla%>&s_word=<%=s_word%>">맨첨</a> <%
 	if (Page > 10) {
 %> <a
				href="list.jsp?Page=<%=Page - 10%>&cla=<%=cla%>&s_word=<%=s_word%>">이전페이지-10</a>
				<%
					}
				%> <%
 	if (Page != 1) {
 %> <a
				href="list.jsp?Page=<%=Page - 1%>&cla=<%=cla%>&s_word=<%=s_word%>">
					<%
						
					%> 이전페이지 <%
						}
						//1page~10page 사이에 존재한다면 1start=1, pend=10
						//11page~20page 사이에 존재한다면 1start=11, pend=20
						//21page~30page 사이에 존재한다면 1start=21, pend=30

						int pstart;
						int pend;

						//전체 레코드 갯수 가져오기
						sql = "select count(id) as cnt from board";
						rs = stmt.executeQuery(sql);//rs 객체가 새로 만들어짐 앞의 것이 종료가 되었는지 꼭 확인해야함
						rs.next();
						int total_record = rs.getInt("cnt");
						//레코드수를 가지고 오기
						int page_cnt = total_record / 10;

						if (total_record % 10 != 0)
							page_cnt = page_cnt + 1; //전체 페이지의 수

						// page_cnt=page_cnt+1;
						// if(total_record%10 ==0)
						// 	page_cnt=page_cnt-1;

						//페이지 링크에 필요한 시작값 생성
						pstart = (int) Page / 10;
						//10,20,30...은 원하는 값보다 1이 더 높다->
						//  	if(page_cnt<Page)
						//  	   Page=Page-1;
						if (Page % 10 == 0) {
							pstart = pstart - 1;
						}
						pstart = Integer.parseInt(pstart + "1");
						pend = pstart + 9; //마지막 구역에서는 pstart 부터 마지막페이지 까지만 출력

						if (pend > page_cnt)
							pend = page_cnt;

						for (int i = pstart; i <= pend; i++) {
					%>
			</a> <%
 	if (i != Page) {
 %> <a href="list.jsp?Page=<%=i%>&cla=<%=cla%>&s_word=<%=s_word%>"><%=i%></a>
				<%
					}
				%> <%
 	if (i == Page) {
 %> <a style="color: red"
				href="list.jsp?page=<%=i%>&cla=<%=cla%>&s_word=<%=s_word%>"><%=i%></a>
				<%
					}
				%> <%
 															}
 	if (Page != page_cnt)//현제 페이지 마지막페이지가 아니라면
 	{
 %> <a
				href="list.jsp?Page=<%=Page + 1%>&cla=<%=cla%>&s_word=<%=s_word%>">다음페이지</a>
				<%
					} else {
				%> <%
 	}
 %> <%
 	if (Page <= page_cnt - 10)//현제 페이지 마지막페이지가 아니라면
 	{
 %> <a
				href="list.jsp?Page=<%=Page + 10%>&cla=<%=cla%>&s_word=<%=s_word%>">다음페이지+10</a>
				<%
					} else {
				%> <%
 	}
 %> <%
 	
 %> <a
				href="list.jsp?Page=<%=page_cnt%>&cla=<%=cla%>&s_word=<%=s_word%>">맨끝</a>
				<select onchange=move_p() name=ppage>

					<%
						for (int i = 1; i <= page_cnt; i++) {
					%>
					<%
						String sel2 = "";
							if (i == Page)
								sel2 = "selected";
							else
								sel2 = "";
					%>
					<option value=<%=i%> <%=sel2%>><%=i%></option>
					<%
						}
					%>
			</select> <%=Page%>page <%=page_cnt%>cnt</td>
		</tr>
	</table>
</body>
</html>
<!-- //page는 세션변수로 만들지 않는다 -> 메모리를 차지하기 때문에 -->

<%
	stmt.close();
	conn.close();
%>