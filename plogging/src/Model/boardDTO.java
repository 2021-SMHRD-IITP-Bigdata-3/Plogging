package Model;

public class boardDTO {
	
	private int num;
	private String id;
	private String postDate;
	private String postPhoto;
	private String postContent;
	private String postTitle;
	
	
	
	
	
	public boardDTO(int num, String id, String postDate, String postPhoto, String postContent, String postTitle) {
		super();
		this.num = num;
		this.id = id;
		this.postDate = postDate;
		this.postPhoto = postPhoto;
		this.postContent = postContent;
		this.postTitle = postTitle;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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

	
	
	
	
	
	
}
