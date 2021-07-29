package Model;

public class reviewBoardDTO {
	
	private int reviewNumber;
	private String memberId;
	private String noticeNumber;
	private String reviewDate;
	private String reviewImage;
	private String location;
	private String contents;
	private String reviewTitle;
	private String checkBox;
	private int run;
	
	
	
	public reviewBoardDTO(int reviewNumber, String memberId, String noticeNumber, String reviewDate, String reviewImage,
			String location, String contents, String reviewTitle, String checkBox, int run) {
		super();
		this.reviewNumber = reviewNumber;
		this.memberId = memberId;
		this.noticeNumber = noticeNumber;
		this.reviewDate = reviewDate;
		this.reviewImage = reviewImage;
		this.location = location;
		this.contents = contents;
		this.reviewTitle = reviewTitle;
		this.checkBox = checkBox;
		this.run = run;
	}
	
	public int getReviewNumber() {
		return reviewNumber;
	}
	public void setReviewNumber(int reviewNumber) {
		this.reviewNumber = reviewNumber;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getNoticeNumber() {
		return noticeNumber;
	}
	public void setNoticeNumber(String noticeNumber) {
		this.noticeNumber = noticeNumber;
	}
	public String getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getReviewImage() {
		return reviewImage;
	}
	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getCheckBox() {
		return checkBox;
	}
	public void setCheckBox(String checkBox) {
		this.checkBox = checkBox;
	}
	public int getRun() {
		return run;
	}
	public void setRun(int run) {
		this.run = run;
	}

	
	
	
}
