package Model;

public class notic_BoardDTO {

	private int noticeNumber;
	private int tip_off_number;
	private String noticePost;
	private String noticeDate;
	private String noticeTitle;
	private String noticeImage;
	private String noticeMember;
	private String limitedNumber;
	private String address;
	private String plogDate;
	
	public notic_BoardDTO(int noticeNumber, int tip_off_number, String noticePost, String noticeDate,
			String noticeTitle, String noticeImage, String noticeMember, String limitedNumber, String address,
			String plogDate) {
		super();
		this.noticeNumber = noticeNumber;
		this.tip_off_number = tip_off_number;
		this.noticePost = noticePost;
		this.noticeDate = noticeDate;
		this.noticeTitle = noticeTitle;
		this.noticeImage = noticeImage;
		this.noticeMember = noticeMember;
		this.limitedNumber = limitedNumber;
		this.address = address;
		this.plogDate = plogDate;
	}

	public int getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	public int getTip_off_number() {
		return tip_off_number;
	}

	public void setTip_off_number(int tip_off_number) {
		this.tip_off_number = tip_off_number;
	}

	public String getNoticePost() {
		return noticePost;
	}

	public void setNoticePost(String noticePost) {
		this.noticePost = noticePost;
	}

	public String getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeImage() {
		return noticeImage;
	}

	public void setNoticeImage(String noticeImage) {
		this.noticeImage = noticeImage;
	}

	public String getNoticeMember() {
		return noticeMember;
	}

	public void setNoticeMember(String noticeMember) {
		this.noticeMember = noticeMember;
	}

	public String getLimitedNumber() {
		return limitedNumber;
	}

	public void setLimitedNumber(String limitedNumber) {
		this.limitedNumber = limitedNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPlogDate() {
		return plogDate;
	}

	public void setPlogDate(String plogDate) {
		this.plogDate = plogDate;
	}

	
	
}
