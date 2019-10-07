package belkman.Dto;


public class Dto
{//수정 삭제 할경우 id가 필요함 dto는 무조건 데이타베이스에 저장되는 필드를 똑같이 만들어야함 자료형도 같이
//	date는 String으로 해주는것이 편리함
//	자바 클래스의 값을 주고 가져올수 있는 관리능력을 가지고 있음
//	jsp에서 자바 클래스를 사용한다,접근한다.
//	rs객체에서 가져온것을 여기다가 집어넣음, 값을 주고 받는 getter,setter를 만들어야함
//	*generate getter,setter 하는법
//	 우클릭- source - generate getter and setter
	
//	데이터베이스의 테이블 구조와 동일하게 정의
	
	private int id;
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGubun() {
		return gubun;
	}
	public void setGubun(int gubun) {
		this.gubun = gubun;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getPwd_qu() {
		return pwd_qu;
	}
	public void setPwd_qu(int pwd_qu) {
		this.pwd_qu = pwd_qu;
	}
	public String getPwd_an() {
		return pwd_an;
	}
	public void setPwd_an(String pwd_an) {
		this.pwd_an = pwd_an;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getJuso1() {
		return juso1;
	}
	public void setJuso1(String juso1) {
		this.juso1 = juso1;
	}
	public String getJuso2() {
		return juso2;
	}
	public void setJuso2(String juso2) {
		this.juso2 = juso2;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHphone() {
		return hphone;
	}
	public void setHphone(String hphone) {
		this.hphone = hphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSung() {
		return sung;
	}
	public void setSung(int sung) {
		this.sung = sung;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getChk1() {
		return chk1;
	}
	public void setChk1(int chk1) {
		this.chk1 = chk1;
	}
	public int getChk2() {
		return chk2;
	}
	public void setChk2(int chk2) {
		this.chk2 = chk2;
	}
	public int getChk3() {
		return chk3;
	}
	public void setChk3(int chk3) {
		this.chk3 = chk3;
	}
	public int getChk4() {
		return chk4;
	}
	public void setChk4(int chk4) {
		this.chk4 = chk4;
	}
	public String getWriteday() {
		return writeday;
	}
	@Override //dto에 있는 모든 필드 값을 전부 출력해줌
	public String toString() {
		return "Dto [id=" + id + ", gubun=" + gubun + ", userid=" + userid + ", pwd=" + pwd + ", pwd_qu=" + pwd_qu
				+ ", pwd_an=" + pwd_an + ", name=" + name + ", zip=" + zip + ", juso1=" + juso1 + ", juso2=" + juso2
				+ ", phone=" + phone + ", hphone=" + hphone + ", email=" + email + ", sung=" + sung + ", birth=" + birth
				+ ", chk1=" + chk1 + ", chk2=" + chk2 + ", chk3=" + chk3 + ", chk4=" + chk4 + ", writeday=" + writeday
				+ ", getId()=" + getId() + ", getGubun()=" + getGubun() + ", getUserid()=" + getUserid() + ", getPwd()="
				+ getPwd() + ", getPwd_qu()=" + getPwd_qu() + ", getPwd_an()=" + getPwd_an() + ", getName()="
				+ getName() + ", getZip()=" + getZip() + ", getJuso1()=" + getJuso1() + ", getJuso2()=" + getJuso2()
				+ ", getPhone()=" + getPhone() + ", getHphone()=" + getHphone() + ", getEmail()=" + getEmail()
				+ ", getSung()=" + getSung() + ", getBirth()=" + getBirth() + ", getChk1()=" + getChk1()
				+ ", getChk2()=" + getChk2() + ", getChk3()=" + getChk3() + ", getChk4()=" + getChk4()
				+ ", getWriteday()=" + getWriteday() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	private int gubun;
    private String userid;
    private String pwd;
    private int pwd_qu;
    private String pwd_an;
    private String name;
    private String zip;
    private String juso1;
    private String juso2;
    private String phone;
    private String hphone;
    private String email;
    private int sung;
    private String birth;
    private int chk1;
    private int chk2;
    private int chk3;
    private int chk4;
    private String writeday;

}
