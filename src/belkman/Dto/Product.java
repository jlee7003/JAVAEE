package belkman.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;

import org.apache.tomcat.dbcp.dbcp2.DelegatingConnection;

public class Product 
{

	//상품 리스트 출력에 필요한 필드의 값을 가져올 변수 정의
	
	//추가되는 객체 안에 있는 요소들의 값
	private int id; //상품 상세내용 이동시 필요한 값
	private String plist;
	private String pname;
	private String price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPlist() {
		return plist;
	}
	public void setPlist(String plist) {
		this.plist = plist;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Product(ResultSet rs) throws SQLException {
		super();
		DecimalFormat df=new DecimalFormat("#,###"); //쉼표를 넣어주는 작업
		this.id = rs.getInt("id");
		this.plist = rs.getString("plist");
		this.pname = rs.getString("pname");
		this.price = df.format(rs.getInt("price"));
	}
	
}
