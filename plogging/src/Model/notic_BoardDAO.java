package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class notic_BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	
	int cnt = 0;
	notic_BoardDTO dto = null;
	
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
//
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
	
	// 이미지 업로드 메소드
			public int upload(notic_BoardDTO dto) {
				try {
					conn();
					String sql = "insert into notice values(num_notice_number.nextval, ?,?, sysdate,?,?,?,?,?,?)";
					psmt = conn.prepareStatement(sql);
					psmt.setInt(1, dto.getTip_off_number());
					psmt.setString(2, dto.getNoticePost());
					psmt.setString(3, dto.getNoticeTitle());
					psmt.setString(4, dto.getNoticeImage());
					psmt.setString(5, dto.getNoticeMember());
					psmt.setString(6, dto.getLimitedNumber());
					psmt.setString(7, dto.getAddress());
					psmt.setString(8, dto.getPlogDate());
					
					cnt = psmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
				}return cnt;
			}
			
			// 전체게시글 보여주기 메소드
			public ArrayList<notic_BoardDTO> showBoard() {
				ArrayList<notic_BoardDTO> notic_BoardDTO_list = new ArrayList<notic_BoardDTO>();
				try {
					conn();
					String sql = "select * from notice order by b_date desc";
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					
					while(rs.next()) {
						int noticeNumber = rs.getInt("noticeNumber");
						int tip_off_number = rs.getInt("tip_off_number");
						String noticePost = rs.getString("noticePost");
						String noticeDate = rs.getString("noticeDate");
						String noticeTitle = rs.getString("noticeTitle");
						String noticeImage = rs.getString("noticeImage");
						String noticeMember = rs.getString("noticeMember");
						String limitedNumber = rs.getString("limitedNumber");
						String address = rs.getString("address");
						String plogDate = rs.getString("plogDate");
						
						notic_BoardDTO dto = new notic_BoardDTO(noticeNumber, tip_off_number, noticePost,noticeDate,noticeTitle, noticeImage,noticeMember,limitedNumber,address,plogDate);
						notic_BoardDTO_list.add(dto);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
				}
				return notic_BoardDTO_list;
				
			}
			
			// 개별 게시글 보여주기 메소드
			   public notic_BoardDTO showOne(int notice_number) {
			      try {
			         conn();
			         String sql ="select * from notice_number where review_number = ?";
			         
			         psmt = conn.prepareStatement(sql);
			         psmt.setInt(1, notice_number);
			         rs = psmt.executeQuery();
			         
			         if(rs.next()) {
			        	 
						int tip_off_number = rs.getInt("tip_off_number");
			            String noticePost = rs.getString("noticePost");
			            String noticeDate = rs.getString("noticeDate");
			            String noticeTitle = rs.getString("noticeTitle");
			            String noticeImage = rs.getString("noticeImage");
			            String noticeMember = rs.getString("noticeMember");
			            String limitedNumber = rs.getString("limitedNumber");
			            String address = rs.getString("address");
			            String plogDate = rs.getString("plogDate");			            
			            
			            dto = new notic_BoardDTO(notice_number, tip_off_number,noticePost, noticeDate, noticeTitle, noticeImage, noticeMember,limitedNumber,address,plogDate);
			         }
			      } catch (SQLException e) {
			         e.printStackTrace();
			      } finally {
			         close();
			      } return dto;
			   }
}
