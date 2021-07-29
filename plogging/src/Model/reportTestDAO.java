package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class reportTestDAO {
	Connection conn = null;
	int cnt  = 0;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	reportTestDTO dto =null;
	public int upload(reportTestDTO dto) {
		try {
			conn();
			String sql = "insert into test11 values(Report_num.nextval, ?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getLat());
			psmt.setString(2,dto.getImg());
			psmt.setString(3,dto.getLng());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
	}
	
	public void conn() {
		try {
			// class forname ÀÌ ¿À·ù°¡ ¶ß´Âµ¥ ÀÌ°Ô ¿À·ù°¡ ¶ß¸é ¾î¶±ÇÒ²¨¾ß?
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbid = "hr";
			String dbpw	= "hr";
			
			// url id pw°¡ ´Ù¸£¸é ¾î¶±ÇÒ²¨¿©?
			conn = DriverManager.getConnection(url,dbid,dbpw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void close() {

		try{
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			psmt.close();
			}if(conn != null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
