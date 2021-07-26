package Model;

public class notic_boardDTO {

	private String location;
	private String ploggingDate;
	private String postPhoto;
	private String peopleLimit;
	private String postNumber;
	private String list;
	
	
	public notic_boardDTO(String location, String ploggingDate, String postPhoto, String peopleLimit, String postNumber,
			String list) {
		super();
		this.location = location;
		this.ploggingDate = ploggingDate;
		this.postPhoto = postPhoto;
		this.peopleLimit = peopleLimit;
		this.postNumber = postNumber;
		this.list = list;
	}
	
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPloggingDate() {
		return ploggingDate;
	}
	public void setPloggingDate(String ploggingDate) {
		this.ploggingDate = ploggingDate;
	}
	public String getPostPhoto() {
		return postPhoto;
	}
	public void setPostPhoto(String postPhoto) {
		this.postPhoto = postPhoto;
	}
	public String getPeopleLimit() {
		return peopleLimit;
	}
	public void setPeopleLimit(String peopleLimit) {
		this.peopleLimit = peopleLimit;
	}
	public String getPostNumber() {
		return postNumber;
	}
	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}

	
}
