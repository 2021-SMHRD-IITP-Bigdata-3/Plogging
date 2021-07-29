package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class reviewBoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	
	int cnt = 0;
	reviewBoardDTO dto = null;
	
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
			public int upload(reviewBoardDTO dto) {
				try {
					conn();
					String sql = "insert into review_board values(num_review_board.nextval, ?,?,sysdate,?,?,?,?,?,?)";
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, dto.getMemberId());
					psmt.setString(2, dto.getNoticeNumber());
					psmt.setString(3, dto.getReviewImage());
					psmt.setString(4, dto.getLocation());
					psmt.setString(5, dto.getContents());
					psmt.setString(6, dto.getReviewTitle());
					psmt.setString(7, dto.getCheckBox());
					psmt.setInt(8, dto.getRun());
					
					cnt = psmt.executeUpdate();
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
				}return cnt;
			}
			
			// 전체게시글 보여주기 메소드
			public ArrayList<reviewBoardDTO> showBoard() {
				ArrayList<reviewBoardDTO> reviewBoard_list = new ArrayList<reviewBoardDTO>();
				try {
					conn();
					String sql = "select * from review_board order by b_date desc";
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					
					while(rs.next()) {
						int reviewNumber = rs.getInt("reviewNumber");
						String memberId = rs.getString("memberId");
						String noticeNumber = rs.getString("noticeNumber");
						String reviewDate = rs.getString("reviewDate");
						String reviewImage = rs.getString("reviewImage");
						String location = rs.getString("location");
						String contents = rs.getString("contents");
						String reviewTitle = rs.getString("reviewTitle");
						String checkBox = rs.getString("checkBox");
						int run = rs.getInt("run");
						
						reviewBoardDTO dto = new reviewBoardDTO(reviewNumber, memberId, noticeNumber, reviewDate,reviewImage,location,contents,reviewTitle,checkBox,run);
						reviewBoard_list.add(dto);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close();
				}
				return reviewBoard_list;
				
			}
			
			// 개별 게시글 보여주기 메소드
			   public reviewBoardDTO showOne(int reviewNumber) {
			      try {
			         conn();
			         String sql ="select * from review_board where review_number = ?";
			         
			         psmt = conn.prepareStatement(sql);
			         psmt.setInt(1, reviewNumber);
			         rs = psmt.executeQuery();
			         
			         if(rs.next()) {
							String memberId = rs.getString("memberId");
							String noticeNumber = rs.getString("noticeNumber");
							String reviewDate = rs.getString("reviewDate");
							String reviewImage = rs.getString("reviewImage");
							String location = rs.getString("location");
							String contents = rs.getString("contents");
							String reviewTitle = rs.getString("reviewTitle");
							String checkBox = rs.getString("checkBox");
							int run = rs.getInt("run");
			            
			            
			            dto = new reviewBoardDTO(reviewNumber, memberId, noticeNumber, reviewDate,reviewImage,location,contents,reviewTitle,checkBox,run);
			         }
			      } catch (SQLException e) {
			         e.printStackTrace();
			      } finally {
			         close();
			      } return dto;
			   }
}
