# JAVAEE

■ JSP Tag

 - 스크립트태그(script) → Java code를 넣는 tag → <% %>

 - 액션 태그(action)  → JSP에서 Java 코드를 대신하기 위한 tag



※ 지시자 태그

- Web container가 JSP를 Servlet 으로 변환 할 때 특정 지시를 내리기 위해서 사용하는 태그

- 구문

<%@ 지시어 속성='값' [속성="값" ..] %>

- 지시어

         - page : 페이지의 기능, 특징을 지시

         - include : jsp 페이지에 다른 페이지를 포함시킬 것을 지시

   - taglib : jsp 페이지에서 사용할 custom tab 라이브러리 등록을 지시

- page 지시자

   - 페이징 관련된 기능 횐경을 정의 하는 지시어

         - 속성

          - import : jsp에서 사용할 클래스들을 import 할때 사용

          - contentTyper : response.setContentType() 의 인수로 들어갈 값 설정

          - session : 내장 객체 session의 생성 여부 설정. 값 : true/false, true가 default

    - errorPage : jsp가 실행 도중 exception이 발생했을 때 이동할 url 지정

※ 표현식 태그

 - 응답 Stream을 통해 출력하기 위한 태그

 - 구문

     <%= 출력내용 %>

  ex) <%= "안녕하세요" %>   → out.println("안녕하세요");

       ∴ <%= "안녕하세요"; %> 는 쓸수 없다. → out.println("안녕하세요";);

        <% int i = 10; %> <%= i %>

 - 서블릿으로 변환 시 out.print(출력내용); 으로 변환됨

※ 선언자 태그

 - JSP가 서블릿으로 변환 될때 서블릿의 member 변수 (Field)나 member 메소드를 선언할 때 사용

→ jspInit(), jspDestroy() 오버라이딩시 사용

→ _jspService()는 오버라이딩 해서는 안된다. (WC가 자동 오버라이딩)

 - 구문 

<%! 선언문 %>

※ 스크립트릿 태그

 - 클라이언트의 요청에 대해 서비스 하는 동적 코드(java 실행 구문)을 작성 하기 위한 태그

 - 태그 내의 코드는 서블릿으로 변환 시 _jspService()의 로컬 코드로 삽입 된다.

 - 구문

<% java 코드 %>

   ex)

<% if(i>10) { %>  → java code

10보다 큽니다    →  html

<% } %>               →  java code

→

 _jspService(){

if(i>10){

out.println("10보다 큽니다.");

}

}

※ 주석

  - jsp에서의 주석

     - html 주석 : <!-- 주석 내용 -->

     - jsp 주석 : <%-- 주석 내용 -->

     - java 주석 : //, /* 주석 내용 */ → 스크립트릿, 선언자 태그에서 사용 가능



※ 내장 객체 (Implicit variable)

  - JSP에서 기본적으로 제공해 주는 객체

- 변수의 선언, 객체의 생성, 할당 없이 JSP 태그에서 사용할 수 있는 객체

- JSP가 서블릿으로 변환될 때 web container가 생성해서 제공

  - 종류

- request : HttpServletRequest

- response : HttpServletResponse

- out : JspWriter - Servlet 에서의 PrintWriter 역할

- session : HttpSession - <%@ page session = "false" %> 로 설정하면 안 생긴다.

- application : ServletContext

- config : ServletConfig

- pageContext : Servlet 에는 없는 개체로 다른 내장 객체들을 생성할 수 있다.

- page : this - 서블릿 객체 자신

- exception : Throwable - <%@page isErrorPage = "true" %>로 설정 된 경우만 생성 (default는 false)

