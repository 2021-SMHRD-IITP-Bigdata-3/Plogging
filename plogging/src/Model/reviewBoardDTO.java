package Model;

public class reviewBoardDTO {
	
	private String postNumber;
	private String id;
	private String postDate;
	private String postPhoto;
	private String location;
	private String postContent;
	private String postTitle;
	private String checkBox;
	private int run;
	
	public reviewBoardDTO(String postNumber, String id, String postDate, String postPhoto, String location,
			String postContent, String postTitle, String checkBox, int run) {
		super();
		this.postNumber = postNumber;
		this.id = id;
		this.postDate = postDate;
		this.postPhoto = postPhoto;
		this.location = location;
		this.postContent = postContent;
		this.postTitle = postTitle;
		this.checkBox = checkBox;
		this.run = run;
	}
	
	
	public String getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
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
