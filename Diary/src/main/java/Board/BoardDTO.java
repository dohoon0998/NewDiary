package Board;

import java.sql.Date;

public class BoardDTO {
	private String WirteID;
	private String Title;
	private Date PostDate;
	private String NickName;
	private String Open;
	private String Content;
	private int ViewNum;

	public int getViewNum() {
		return ViewNum;
	}

	public void setViewNum(int viewNum) {
		ViewNum = viewNum;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getWirteID() {
		return WirteID;
	}

	public void setWirteID(String wirteID) {
		WirteID = wirteID;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public Date getPostDate() {
		return PostDate;
	}

	public void setPostDate(Date postDate) {
		PostDate = postDate;
	}

	public String getNickName() {
		return NickName;
	}

	public void setNickName(String nickName) {
		NickName = nickName;
	}

	public String getOpen() {
		return Open;
	}

	public void setOpen(String open) {
		Open = open;
	}

}
