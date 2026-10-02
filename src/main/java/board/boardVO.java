package board;

public class boardVO {
	private int idx;
	private	String mid;
	private String nickName;
	private String title;
	private String content;
	private String hostIp;
	private int readNum;
	private String openSw;
	private String wDate;
	private int good;
	private String complaint;
	
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getHostIp() {
		return hostIp;
	}

	public void setHostIp(String hostIp) {
		this.hostIp = hostIp;
	}

	public int getReadNum() {
		return readNum;
	}

	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}

	public String getOpenSw() {
		return openSw;
	}

	public void setOpenSw(String openSw) {
		this.openSw = openSw;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public String getComplaint() {
		return complaint;
	}

	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	//따로 만든 변수
	private int pageSize;

	@Override
	public String toString() {
		return "boardVO [idx=" + idx + ", mid=" + mid + ", nickName=" + nickName + ", title=" + title + ", content="
				+ content + ", hostIp=" + hostIp + ", readNum=" + readNum + ", openSw=" + openSw + ", wDate=" + wDate
				+ ", good=" + good + ", complaint=" + complaint + ", pageSize=" + pageSize + "]";
	}
	
	
	
}
