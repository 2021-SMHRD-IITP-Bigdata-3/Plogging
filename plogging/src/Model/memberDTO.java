package Model;

public class memberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String age;
	private String addr;
	private String plogging;
	
	
	public memberDTO(String id, String pw, String name, String age, String addr, String plogging) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.addr = addr;
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

	public String getPlogging() {
		return plogging;
	}
	public void setPlogging(String plogging) {
		this.plogging = plogging;
	}
	
}
