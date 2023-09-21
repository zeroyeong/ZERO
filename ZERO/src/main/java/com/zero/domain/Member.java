package com.zero.domain;

public class Member {
	private int mem_no;      	//ȸ�� ���� PK
	private String mem_id;   	//ȸ�� Id
	private String mem_pw;   	//ȸ�� PW  
	private String mem_name; 	//ȸ�� �̸�
	private String mem_phone;	//ȸ�� �޴�����ȣ
	
	//�⺻������
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	//�Ϲݻ�����
	public Member(int mem_no, String mem_id, String mem_pw, String mem_name, String mem_phone, String mem_email,
			String mem_birth) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
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
}
