<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.oreilly.servlet.MultipartRequest" %>
<%@ page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>     
<%@ page import="java.sql.*" %> 
<%@ page import="belkman.Jdbc.Connect" %>     
<%-- //자바 resource --%>
 
<%
//cos.jar 업로드시 MultipartRequest의 객체를 이용하여
//pro_input.jsp에 입력된 값을 가져와야 된다.
  Connection conn=Connect.connection2();
    request.setCharacterEncoding("utf-8");

// MultipartRequest 객체 생성
// 생성자에 들어갈 매개변수
// request,경로,파일의크기,"utf-8", new DefaultFileRenamePolicy()
String path="C:/Users/alfo1-3/eclipse-workspace3/belkman/WebContent/belkmanS/product/img"; // 그림파일경로
int max=1024*1024*10;
MultipartRequest multi=new MultipartRequest(request, path, max, "utf-8", new DefaultFileRenamePolicy());

//request 되는 값 가져오기
// 상품코드
String pcode=multi.getParameter("pcode");
//현재 product t		able에서 가장 높은 아이디 값을 가져오고 1 증가후 4자리로 환산.

String sql="select max(id) as num from product";
// product라는 table에서 id의 가장 높은값 호출하기
PreparedStatement pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery(sql);
rs.next();//null 값을 getInt()로 부르면 0값을 가져온다.
String code=rs.getInt("num")+1+""; //가장 높은 필드 값의 +1
//out.print(code);=> 1~4자리를 무조건 4자리로
if(code.length()==1)
code="000"+code;
if(code.length()==2)
code="00"+code;
if(code.length()==3)
code="0"+code;
pcode=pcode+code;
//상품이름
String pname=multi.getParameter("pname");
String price=multi.getParameter("price");
String pwash=multi.getParameter("pwash");
//생산일자
String yy=multi.getParameter("yy");
String mm=multi.getParameter("mm");
String dd=multi.getParameter("dd");
String proday=yy+"-"+mm+"-"+dd;

//입고수량
String pinput=multi.getParameter("pinput");

//image 3개
String plist=multi.getParameter("plist");
String pmain=multi.getParameter("pmain");
String pdt_img=multi.getParameter("pdt_img");

sql="insert into product(pcode, pname, price, pcoord, pwash, proday, pwriteday, pinput, poutput, plist, pmain, pdt_img)";
sql=sql+"values (?,?,?,?,?,?,now(),?,?,?,?,?)";

pstmt=conn.prepareStatement(sql);
pstmt.setString(1,pcode);
pstmt.setString(2,pname);
pstmt.setString(3,price);
pstmt.setString(4,""); //추후 처리
pstmt.setString(5,pwash);
pstmt.setString(6,proday);
pstmt.setString(7,pinput);
pstmt.setString(8,"0");
pstmt.setString(9,plist);
pstmt.setString(10,pmain);
pstmt.setString(11,pdt_img);

pstmt.executeUpdate();


pstmt.close();
rs.close();
conn.close();

%> 