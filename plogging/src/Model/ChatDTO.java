package Model;

public class ChatDTO {

	private int num;
	private String member_id;
	private String content;
	private String day;

	public ChatDTO(int num, String member_id, String content, String day) {
		this.num = num;
		this.member_id = member_id;
		this.content = content;
		this.day = day;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}

}
