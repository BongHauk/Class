package com.board.free.model;


public class FreeVO {
    // 멤버 변수 선언
    private int post_num;
    private String user_id;
    private String title;
    private String content;
    private java.sql.Date createdate;
    private int view_count;
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public java.sql.Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(java.sql.Date createdate) {
		this.createdate = createdate;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

    
}