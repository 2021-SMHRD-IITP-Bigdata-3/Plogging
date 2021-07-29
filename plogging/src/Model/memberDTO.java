package Model;

public class memberDTO {
	
	private String memberId;
	private String memberPw;
	private String memberName;
	private int memberAge;
	private String memberAddr;
	private String memberPlogOwn;
	private String memberPlogCount;
	
	
	public memberDTO(String memberId, String memberPw, String memberName, int memberAge, String memberAddr,
			String memberPlogOwn, String memberPlogCount) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberAge = memberAge;
		this.memberAddr = memberAddr;
		this.memberPlogOwn = memberPlogOwn;
		this.memberPlogCount = memberPlogCount;
	}
	
	
	
	public memberDTO(String memberId, String memberPw, String memberName, int memberAge, String memberAddr,
			String memberPlogCount) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberAge = memberAge;
		this.memberAddr = memberAddr;
		this.memberPlogCount = memberPlogCount;
	}



	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public int getMemberAge() {
		return memberAge;
	}
	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberPlogOwn() {
		return memberPlogOwn;
	}
	public void setMemberPlogOwn(String memberPlogOwn) {
		this.memberPlogOwn = memberPlogOwn;
	}
	public String getMemberPlogCount() {
		return memberPlogCount;
	}
	public void setMemberPlogCount(String memberPlogCount) {
		this.memberPlogCount = memberPlogCount;
	}
	
	
	

	
}
