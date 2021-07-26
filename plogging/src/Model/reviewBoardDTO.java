package Model;

public class reviewBoardDTO {
	
	private int reviewNumber;
	private String id;
	private String postDate;
	private String postPhoto;
	private String location;
	private String postContent;
	private String postTitle;
	private String checkBox;
	private int run;
	
	
	public reviewBoardDTO(int reviewNumber, String id, String postDate, String postPhoto, String location,
			String postContent, String postTitle, String checkBox, int run) {
		super();
		this.reviewNumber = reviewNumber;
		this.id = id;
		this.postDate = postDate;
		this.postPhoto = postPhoto;
		this.location = location;
		this.postContent = postContent;
		this.postTitle = postTitle;
		this.checkBox = checkBox;
		this.run = run;
	}


	public int getReviewNumber() {
		return reviewNumber;
	}


	public void setReviewNumber(int reviewNumber) {
		this.reviewNumber = reviewNumber;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPostDate() {
		return postDate;
	}


	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}


	public String getPostPhoto() {
		return postPhoto;
	}


	public void setPostPhoto(String postPhoto) {
		this.postPhoto = postPhoto;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getPostContent() {
		return postContent;
	}


	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}


	public String getPostTitle() {
		return postTitle;
	}


	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
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
