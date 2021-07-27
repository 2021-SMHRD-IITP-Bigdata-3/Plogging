package Model;

public class memberDTO {
	
	private String memberId;
	private String memberPw;
	private String memberName;
	private int memberAge;
	private String memberPoint;
	private String memberAddr;
	private String memberPlogOwn;
	private int point;
	private String userBoard;
	private String memberPlogCount;
	
	public memberDTO(String memberId, String memberPw, String memberName, int memberAge, String memberPoint,
			String memberAddr, String memberPlogOwn, int point, String userBoard, String memberPlogCount) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberAge = memberAge;
		this.memberPoint = memberPoint;
		this.memberAddr = memberAddr;
		this.memberPlogOwn = memberPlogOwn;
		this.point = point;
		this.userBoard = userBoard;
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
	public String getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(String memberPoint) {
		this.memberPoint = memberPoint;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getUserBoard() {
		return userBoard;
	}
	public void setUserBoard(String userBoard) {
		this.userBoard = userBoard;
	}
	public String getMemberPlogCount() {
		return memberPlogCount;
	}
	public void setMemberPlogCount(String memberPlogCount) {
		this.memberPlogCount = memberPlogCount;
	}
	
	
	
	
}
