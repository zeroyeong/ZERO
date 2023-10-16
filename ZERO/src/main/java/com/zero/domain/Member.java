package com.zero.domain;

public class Member {
	private int mem_no;      	//회원 순서 PK
	private String mem_id;   	//회원 Id
	private String mem_pw;   	//회원 PW  
	private String mem_name; 	//회원 이름
	private String mem_phone;	//회원 휴대폰번호
	private int ac_type;
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Member(int mem_no, String mem_id, String mem_pw, String mem_name, String mem_phone, int ac_type) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
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

	public int getAc_type() {
		return ac_type;
	}

	public void setAc_type(int ac_type) {
		this.ac_type = ac_type;
	}
	
}