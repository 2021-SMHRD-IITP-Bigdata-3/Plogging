package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.boardDTO;


public class boardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	boardDTO dto = null;
	
	int cnt = 0;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			// @localhost -> @121.147.52.216
			// 소연 ip : 121.147.52.216
			// 준오 ip : 121.147.52.104
			// 유종 ip : 121.147.52.230
			// 진영 ip : 210.223.239.240
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void showboard() {
		
		
		
		
	}
	public int upload(boardDTO dto) {
		try {
			conn();
			String sql = "INSERT INTO board VALUES(num_board.nextval, ?, sysdate, ?, ?, ?, )";
		
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPostContent());
			psmt.setString(3, dto.getPostTitle());
			psmt.setString(4, dto.getPostPhoto());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
	}
	
	public boardDTO showOne(int num) {
		try {
			conn();
			String sql = "SELECT * FROM board WHERE num = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String title = rs.getString(2);
				String writer = rs.getString(3);
				String fileName = rs.getString(4);
				String content = rs.getString(5);
				String b_date = rs.getString(6);
				
				dto = new boardDTO(num, title, writer, fileName, content, b_date);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return dto;
	}
	

}
