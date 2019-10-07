package belkman.Command;

import java.sql.*;
import java.util.ArrayList;

import belkman.Dto.Product;
import belkman.jdbc.Connect;

public class Pro_list 
{
  //jsp에서 동작하건 내용을 여기에 코딩
  //pro_list() product table에 있는 내용을 가져와서
	//jsp문서 내에서 사용할 수 있게 해줌
	public ArrayList<Product> pro_list(String pcode) throws SQLException
	{
		//DB연결
		  Connection conn=Connect.connection2();
		//쿼리문 작성
		String sql="select * from product where pcode like '"+pcode+"%' limit 0,24";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		//쿼리문 실행
		ResultSet rs=pstmt.executeQuery();
		
		ArrayList<Product> list=new ArrayList<Product>(); // ArrayList에 Product라는 클래스를 집어넣음
		//rs의 내용을 Product를 통해 전달
		while(rs.next())
		{
			list.add(new Product(rs)); // product클래스의 객체를 생성후에 해당 객체를 list에 추가
		}
		return list;
		
		
//		Product pro=new Product();
//		pro.setId(rs.getInt("id"));
//		pro.setPlist(rs.getString("plist"));
//		pro.setPname(rs.getString("pname"));
//		pro.setPrice(rs.getString("price"));
	}
}
