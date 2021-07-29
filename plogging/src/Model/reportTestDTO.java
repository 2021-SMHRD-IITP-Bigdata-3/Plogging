package Model;

public class reportTestDTO {
	private int report_number;
	private String lat;
	private String img;
	private String lng;
	
	
	public reportTestDTO(String lat, String img, String lng) {
		super();
		this.lat = lat;
		this.img = img;
		this.lng = lng;
	}
	
	public int getReport_number() {
		return report_number;
	}
	public void setReport_number(int report_number) {
		this.report_number = report_number;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
}
