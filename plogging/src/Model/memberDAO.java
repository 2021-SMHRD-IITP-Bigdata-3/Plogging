package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.memberDTO;

import Model.memberDTO;

public class memberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	memberDTO info = null;
	//
	int cnt = 0;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@localhost:1521:xe";
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

	public int join(memberDTO dto) {
		try {
			// DB 연결 메소드 호출
			conn();

			String sql = "insert into web_member values(?, ?,?,?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getAge());
			psmt.setString(5, dto.getAddr());
			psmt.setString(6, dto.getPlogging());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB 문 닫는 메소드 호출
			close();
		}
		return cnt;
	}

	public memberDTO login(String getId, String getPw) {
		try {
			conn();
			String sql = "select * from web_member where id = ? and pw = ? ";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, getId);
			psmt.setString(2, getPw);
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String age = rs.getString(4);
				String addr = rs.getString(5);
				String plogging = rs.getString(6);

				info = new memberDTO(id, pw, name, age, addr, plogging);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;

	}
	public int update(memberDTO dto) {		
		try {
			conn();
			String sql = "update web_member set pw=?, name=?,age=?, address=? where id = ?";
			
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getName());
			psmt.setNString(3, dto.getAge());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getId());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return cnt;

	}
	public ArrayList<memberDTO> showMember() {
		ArrayList<memberDTO> list = new ArrayList<memberDTO>();
		try {
			conn();
			String sql = "select * from web_member";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String age = rs.getString("age");
				String addr = rs.getString("address");
				String plogging = rs.getString("plogging");
				
				memberDTO dto = new memberDTO(id, pw, name, age, addr,plogging);
				list.add(dto);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return list;		
	}
}
