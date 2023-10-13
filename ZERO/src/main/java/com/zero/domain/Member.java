package com.zero.domain;

public class Member {
	private int mem_no;      	//회원 순서 PK
	private String mem_id;   	//회원 Id
	private String mem_pw;   	//회원 PW  
	private String mem_name; 	//회원 이름
	private String mem_phone;	//회원 휴대폰번호
	
	private String googleId; 	//구글 아이디
	private String naverId;  	//네이버 아이디
	private String kakaoId;		//카카오 아이디
	private String email;		//이메일 
	private String nickname;	//닉네임
	private int ac_type; 
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(int mem_no, String mem_id, String mem_pw, String mem_name, String mem_phone, String googleId,
			String naverId, String kakaoId, String email, String nickname, int ac_type) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.googleId = googleId;
		this.naverId = naverId;
		this.kakaoId = kakaoId;
		this.email = email;
		this.nickname = nickname;
		this.ac_type = ac_type;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getGoogleId() {
		return googleId;
	}

	public void setGoogleId(String googleId) {
		this.googleId = googleId;
	}

	public String getNaverId() {
		return naverId;
	}

	public void setNaverId(String naverId) {
		this.naverId = naverId;
	}

	public String getKakaoId() {
		return kakaoId;
	}

	public void setKakaoId(String kakaoId) {
		this.kakaoId = kakaoId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getAc_type() {
		return ac_type;
	}

	public void setAc_type(int ac_type) {
		this.ac_type = ac_type;
	}
}
