package fp.notice.models.vo;

import java.util.ArrayList;


public class PageData {
	private ArrayList<Notice> list;
	private String pageNavi;
	public PageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Notice> getList() {
		return list;
	}
	public void setList(ArrayList<Notice> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public PageData(ArrayList<Notice> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
}
