package Model;

public class local_GovernmentDTO {

	
	//����ü�Ƶ�, ������ ���, ���� ȸ�����̵�, ������ ��Ȳ, �����Խù�
	private String Gid;
	private String list;//������ ���
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
