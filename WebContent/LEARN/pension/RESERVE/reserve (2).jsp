<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.time.LocalDate" %>    
<%@ include file="../top.jsp" %> 
<%@page import="java.sql.*" %>   
<%  
  String aa="jdbc:mysql://localhost:3307/pension?useSSL=false";
  String bb="root";
  String cc="1234";
  Connection conn = DriverManager.getConnection(aa,bb,cc);
  Statement stmt=conn.createStatement();
  Statement stmt1=conn.createStatement();
%>  
<style>
 #section {
   width:1200px;
   height:1000px;
   margin:auto;
 }
</style> 
 <div id=section> 
<%  // cal4.jsp
                 // LocalDate.now(); // 현재시간 기준
   int y,m; // 년,월저장할 변수
   if(request.getParameter("yy")==null) // 값이 없다면
   {
      LocalDate xday=LocalDate.now(); // 현재시간
      y=xday.getYear();  // 현재시간의 년도
      m=xday.getMonthValue();  // 현재시간의 월
   }
   else // request값이 있어서 받은값은 정수로 변환
   {
	  y=Integer.parseInt(request.getParameter("yy"));
	  m=Integer.parseInt(request.getParameter("mm"));
   }
   LocalDate today=LocalDate.of(y,m,1); // 괄호내에있는 년월일
   int yoil=today.getDayOfWeek().getValue(); // 1일의 요일
   if(yoil==7) 
	   yoil=0;  // 일요일경우 이전소스가 대부분 일요일이 0이라서 
	   
   double chong=today.lengthOfMonth(); // 월의 총일수
   
   int ju=(int)Math.ceil((chong+yoil)/7); // 현재월의 주의 수 
                       // 올림(X.xxxx) =>  X정수보다 1큰 정수로
   int max_day=(int)chong;  
   
   //double a=100; // double과 int로 바꾸어서 출력을 확인해보세요
   //int b=6;
   //out.print(a/b);

%>
 <script>
  function move_cal()
  { // 다른년도와 다른월의 달력을 보여주기
	var y=document.all.sel_y.value; // document.form.select이름.value; => 폼태그x=>id,class를 이용
    var m=document.all.sel_m.value;
	// 년도, 월을가지고 문서를 호출
	location="reserve.jsp?yy="+y+"&mm="+m;
	         // cal4.jsp?yy=2020&mm=8
  }
 </script>
 <table width=1000 height=500 align=center border=1 cellspacing=0>
  <caption>
    <% 
      if(m!=1)
      {
    %>
     <a href="reserve.jsp?yy=<%=y%>&mm=<%=m-1%>"> 이전달 </a>
    <%
      }
      else
      {
    %>
     <a href="reserve.jsp?yy=<%=y-1%>&mm=<%=12%>"> 이전달 </a>
    <%
      }
    %>
      <select onchange=move_cal() id=sel_y>
         <%
          String sel1="";
          for(int i=y+3;i>=y-3;i--) // 2019라면 2022~2016
          {
        	if(i==y)
        		sel1="selected";
        	else
        		sel1="";
         %>
          <option value=<%=i%> <%=sel1%>> <%=i%> </option>
         <%
          }
         %>
         
      </select>
      <select onchange=move_cal() id=sel_m>
         <%
          String sel2="";
          for(int i=1;i<=12;i++)
          {
        	if(i==m)
        		sel2="selected";
        	else
        		sel2="";
         %>
          <option value=<%=i%> <%=sel2%>> <%=i%> </option>
         <%
          }
         %>
      </select>
    <%
      if(m!=12)
      {
    %>
     <a href="reserve.jsp?yy=<%=y%>&mm=<%=m+1%>"> 다음달 </a> 
    <%
      }
      else
      {
    %>
     <a href="reserve.jsp?yy=<%=y+1%>&mm=<%=1%>"> 다음달 </a> 
    <%
      }
    %>
  </caption>
  <tr align=center height=50px>
    <td> 일 </td>
    <td> 월 </td>
    <td> 화 </td>
    <td> 수 </td>
    <td> 목 </td>
    <td> 금 </td>
    <td> 토 </td>
  </tr>
  <%
    int day=1;
    for(int i=1;i<=5;i++) // i의 값이 행의 값과 일치
    {
  %>
  <tr align=center> <!-- 주 -->
    <%
      for(int j=0;j<7;j++)
      {
       if( (yoil>j && i==1) || max_day < day)	// 빈칸을 출력할 경우가 맞다면
       {     // 앞쪽빈칸        // 뒤쪽빈간(총일수 뒷부분)
    %> 
        <td> &nbsp; </td> <!-- 빈칸을 출력하는 부분 -->
    <%
       }
       else  // 날짜를 출력할 경우라면
       {
    	   
    	 // 방예약되었는지를 확인하는 부분 시작
    	 String sql;
    	 ResultSet rs,rs1;
    	 String nowday; // 1일부터 31일까지의 '년-월-일'
    %>
        <td valign=top align=left> <!-- 날짜 출력되는 td -->
          <span><%=day%></span>   
          <%
          // bang테이블에 있는 방의 갯수만큼 실행
          // bang테이블을 rs에 가져오기
          sql="select * from bang order by price asc";
          rs=stmt.executeQuery(sql);
         while(rs.next())
         {
          nowday=y+"-"+m+"-"+day;  // y,m,day => 2019-07-02
          sql="select * from reserve where in_date <= '"+nowday+"'";
          sql=sql+" and out_date > '"+nowday+"' and bang='"+rs.getString("name")+"'";
          //out.println(sql);
          rs1=stmt1.executeQuery(sql);
          if(rs1.next()) // 방이 현재날짜에 예약되어있다..
          {
          %>
           <p align=center>  <%=rs.getString("name")%>(불가)  </p>
          <%
          }
          else
          {
          %> 
           <p align=center> <a href="input.jsp?bang=chan&y=<%=y%>&m=<%=m%>&d=<%=day%>"> <%=rs.getString("name")%>(가능) </a> </p>
          <%
          }
         } // while문 끝
          %>  
          
        </td> <!-- 날짜 나타나는 td -->
    <%
          day=day+1; 
       }
       
      }
    %>
  </tr>
  <%
    }
  %>
  
 </table>

</div>
<%@ include file="../bottom.jsp" %> 








