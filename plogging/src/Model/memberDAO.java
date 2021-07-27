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

			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMemberId());
			psmt.setString(2, dto.getMemberPw());
			psmt.setString(3, dto.getMemberName());
			psmt.setInt(4, dto.getMemberAge());
			psmt.setString(5, dto.getMemberPoint());
			psmt.setString(6, dto.getMemberAddr());
			psmt.setString(7, dto.getMemberPlogOwn());
			psmt.setInt(8, dto.getPoint());
			psmt.setString(9, dto.getUserBoard());
			psmt.setString(10, dto.getMemberPlogCount());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB 문 닫는 메소드 호출
			close();
		}
		return cnt;
	}

	public memberDTO login(String getMemberId, String getMemberPw) {
		try {
			conn();
			String sql = "select * from member where member_id = ? and member_pw = ? ";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, getMemberId);
			psmt.setString(2, getMemberPw);
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				String memberId = rs.getString(1);
				String memberPw = rs.getString(2);
				String memberName = rs.getString(3);
				int memberAge = rs.getInt(4);
				String memberPoint = rs.getString(5);
				String memberAddr = rs.getString(6);
				String memberPlogOwn = rs.getString(7);
				int point = rs.getInt(8);
				String userBoard = rs.getString(9);
				String memberPlogCount = rs.getString(10);


				info = new memberDTO(memberId, memberPw, memberName, memberAge, memberPoint, memberAddr,memberPlogOwn,point,userBoard,memberPlogCount);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;

	}
	
	// 회원정보수정 메소드
	public int update(memberDTO dto) {		
		try {
			conn();
			String sql = "update member set member_pw=?, member_name=?,member_age=?, member_addr=?,member_plog_own=?,member_plog_count=?  where member_id = ?";
			
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMemberPw());
			psmt.setString(2, dto.getMemberName());
			psmt.setInt(3, dto.getMemberAge());
			psmt.setString(4, dto.getMemberAddr());
			psmt.setString(5, dto.getMemberPlogOwn());
			psmt.setString(6, dto.getMemberPlogCount());
			
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
			String sql = "select * from member";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String memberId = rs.getString("id");
				String memberPw = rs.getString("pass");
				String memberName = rs.getString("name");
				int memberAge = rs.getInt("age");
				String memberAddr = rs.getString("address");
				String memberPlogCount = rs.getString("exp");
				
				memberDTO dto = new memberDTO(memberId, memberPw, memberName, memberAge, memberAddr,memberPlogCount);
				list.add(dto);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return list;		
	}
}
