package Model;

public class boardReDTO {
	
	//댓글번호, 댓글아이디, 댓글 비밀번호, 댓글 내용, 댓글 작성일자, 게시물 번호
	private int renum;
	private String reid;
	private String repw;
	private String reDate;
	private int postNum;
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public String getReid() {
		return reid;
	}
	public void setReid(String reid) {
		this.reid = reid;
	}
	public String getRepw() {
		return repw;
	}
	public void setRepw(String repw) {
		this.repw = repw;
	}
	public String getReDate() {
		return reDate;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	public int getPostNum() {
		return postNum;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public boardReDTO(int renum, String reid, String repw, String reDate, int postNum) {
		super();
		this.renum = renum;
		this.reid = reid;
		this.repw = repw;
		this.reDate = reDate;
		this.postNum = postNum;
	}
	
	
	
	
	
	
}
