package com.zero.domain;

public class Branch {
	//ÁöÁ¡
	private int branch_no;
	private String branch_code;
	private String branch_name;
	private String branch_address;
	private String branch_tell;
	private String branch_pic;
	
	private Reservation reservation;

	public Branch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Branch(int branch_no, String branch_code, String branch_name, String branch_address, String branch_tell,
			String branch_pic, Reservation reservation) {
		super();
		this.branch_no = branch_no;
		this.branch_code = branch_code;
		this.branch_name = branch_name;
		this.branch_address = branch_address;
		this.branch_tell = branch_tell;
		this.branch_pic = branch_pic;
		this.reservation = reservation;
	}

	public int getBranch_no() {
		return branch_no;
	}

	public void setBranch_no(int branch_no) {
		this.branch_no = branch_no;
	}

	public String getBranch_code() {
		return branch_code;
	}

	public void setBranch_code(String branch_code) {
		this.branch_code = branch_code;
	}

	public String getBranch_name() {
		return branch_name;
	}

	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}

	public String getBranch_address() {
		return branch_address;
	}

	public void setBranch_address(String branch_address) {
		this.branch_address = branch_address;
	}

	public String getBranch_tell() {
		return branch_tell;
	}

	public void setBranch_tell(String branch_tell) {
		this.branch_tell = branch_tell;
	}

	public String getBranch_pic() {
		return branch_pic;
	}

	public void setBranch_pic(String branch_pic) {
		this.branch_pic = branch_pic;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}
	
	
	
}
