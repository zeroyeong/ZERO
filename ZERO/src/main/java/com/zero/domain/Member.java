package com.zero.domain;

public class Member {
	private int mem_no;      	//회원 순서 PK
	private String mem_id;   	//회원 Id
	private String mem_pw;   	//회원 PW
	private String mem_name; 	//회원 이름
	private String mem_phone;	//회원 휴대폰번호
	private String mem_email;	//회원 이메일
	private String mem_birth;	//회원 생일
	private int ac_no;       	//계정 구분 번호 FK
	
	//기본생성자
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	//일반생성자
	public Member(int mem_no, String mem_id, String mem_pw, String mem_name, String mem_phone, String mem_email,
			String mem_birth, int ac_no) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_birth = mem_birth;
		this.ac_no = ac_no;
	}

	//GETTER
	public int getMem_no() {
		return mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public String getMem_email() {
		return mem_email;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public int getAc_no() {
		return ac_no;
	}

	//SETTER
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public void setAc_no(int ac_no) {
		this.ac_no = ac_no;
	}
}
