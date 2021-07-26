package Model;

public class memberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String age;
	private String addr;
	private int point;
	private String plogging;
	
	
	public memberDTO(String id, String pw, String name, String age, String addr, int point, String plogging) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.addr = addr;
		this.point = point;
		this.plogging = plogging;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getPlogging() {
		return plogging;
	}
	public void setPlogging(String plogging) {
		this.plogging = plogging;
	}
	
}
