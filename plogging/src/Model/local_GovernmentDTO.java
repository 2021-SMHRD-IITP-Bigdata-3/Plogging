package Model;

public class local_GovernmentDTO {

	
	//지자체아디, 참여자 목록, 적립 회원아이디, 적립금 현황, 제보게시물
	private String Gid;
	private String list;//참여자 목록
	private String id;
	private String postContents;
	
	
	
	
	public local_GovernmentDTO(String gid, String list, String id, String postContents) {
		super();
		this.Gid = gid;
		this.list = list;
		this.id = id;
		this.postContents = postContents;
	}
	public String getGid() {
		return Gid;
	}
	public void setGid(String gid) {
		this.Gid = gid;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPostContents() {
		return postContents;
	}
	public void setPostContents(String postContents) {
		this.postContents = postContents;
	}
	
	
}
