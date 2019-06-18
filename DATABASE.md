<h5>DATABASE</h5>


주소록 만들기(테이블 만들기)<p>

-만드는 순서<p>

1.create data base 데이타베이스명;<p>
  show -> show databases;-데이터 베이스를 보여달라 혹은 table ex) show tables;<br>
  drop -> 삭제(table)<br>
  create-> 생성 (데이터베이스 혹은 테이블) <br>

2.create table<p>
  create table 테이블명(항목 자료형,항목 자료형,항목 자료형...);<br>
  ex) create table member(id int auto_increment primary key, name char(10),age int);<br>
  //id int auto_increment primary key-> 중복허용 불가(회원의 중복을 없애기 위해 입력)<br>
  항목-> 필드명 자료형<br>

  자료형 -> int ,char ,text<br>
  
3.데이터 관리하기(입력,수정,분류,삭제)<br>
  //물건들은 예를 들어 물건테이블에 있는 것이고 물건을 등록하고 그후에 출력하는 것<br>

  명령어<br>
  show -> show databases;-데이터 베이스를 보여달라<br>
  //record => 한명의 정보, 테이블의 한줄<br>
  drop -> 삭제(table)<br>
  create-> 생성 (데이터베이스 혹은 테이블) <br>
  desc 테이블명 (필드보기)<br>
  select*from member; 테이블의 구조 보기<br>


  입력: insert <br>
  insert into 테이블명(필드명, 필드명, 필드명, 필드명) values('값', '값', '값', '값');<br>
  ex) insert into member(name, phone, age, pay) values('anthony','01032757003',24,100000);<p>

  보기: select*from member; 테이블의 구조 보기<p>

  create table imsi(id int auto)<p>

  *수정과 삭제는 where가 무조건 필수<p>
  

  삭제: delete<br>
  ex) delete from 테이블명 where 필드=값;<br>
  delete from "table name" where "field"='값'; 선택한 레코드만 삭제 !따옴표도 없애는 것!<br>
  ex) delete from guest where 항목=값<p>

  수정: update<br>
  ex) update 테이블명 set 필드명='바꿀값',필드명=바꿀값<br>
      where 필드=값<br>
      
  테이블 수정-> alter<p>

  use DB명 -> 사용할 DB결정<p>

  add column 항목 추가<br>
  ex) alter table friend add column id int auto_increment primary key;<br>
  

1.데이터베이스 생성, 접근<br>
  show databases;-> 데이터베이스의 종류확인<br>
create database; -> 생성<br>



2.테이블의 생성, 수정<br>
 생성전에 use 데이터 명을 입력<br>
select : 검색<br>
select <br>
resultset 데이터베이스의table 내용을 그대로 복사하여 가져오는것 <p>


3.테이블 만들기<br>
  create table명령을 실행<br>
  create table guest(id int auto_increment primary key, name char(10), title char(100), content text);<br>

간단계시판<br>

//레코드 데이터베이스에서의 한줄<br>
rs.next()<p>

1.테이블명 -> guest<p>

2.항목 - id int auto_increment primary key -> 기본키<br>
       - name char(10) -> 이름<br>
       - tittle char(100) ->제목<br>
       - content text -> 내용<br>

3.select*from 테이블명 <br>
 ->테이블에 입력한 정보 보는 법<br>

-select 할때 조건을 붙이는 방법<p>

  select * from member where age >= 20; //member table에 age가 20 이상인 항목 검색<br>
  select * from guest where id="number"; //<,> 등도 사용가능 //아이디 값은 중복이 안되는 유일한 값<br>
  select * from member where age>=20 and name like '이%'; //20세 이상과 성이 "이"씨인 사람 검색<br>
  (%이%라면 이름에 이가 들어간 사람, "%이"라면 "이"로 끝나는 사람)<br>
  select * from member order age desc, name asc;// 나이순으로 내림차순정렬하고 같은 나이는 이름순으로  오름차순<br>
  (desc 내림차순, asc 오름차순)<br>



method=post. get<br>

http://localhost:8080/alfo1-3/listselect(content).jsp?변수명=값<br>









