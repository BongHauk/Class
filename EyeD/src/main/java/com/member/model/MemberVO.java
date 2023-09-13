package com.member.model;

public class MemberVO {
	
	private int profile_id;
	
//	회원가입 폼에서 들어가는 데이터
	private int user_no;
	public String user_name;
	public String user_id;
	private String password;
	private String email1;
	private String email2;
	
	private String birthdate;
	private String join_date;
	private String introduction;
	
	
	
	private int getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(int profile_id) {
		this.profile_id = profile_id;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	
	@Override
	public String toString() {
		return "MemberVO [profile_id=" + profile_id + ", user_no=" + user_no + ", user_name=" + user_name + ", user_id="
				+ user_id + ", password=" + password + ", email1=" + "email2=" + ", birthdate=" + birthdate + ", join_date="
				+ join_date + ", introduction=" + introduction + "]";
	}

	
}
