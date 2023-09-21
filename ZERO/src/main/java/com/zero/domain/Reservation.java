package com.zero.domain;

public class Reservation {
	
	private int re_no;
	private int re_branch;
	private String re_name;
	private String re_tel1;
	private String re_tel2;
	private String re_tel3;
	private String re_pwd;
	private String re_date;
	private int re_stadium;
	private int re_time;
	private String re_totalpay;
	private String re_memo;
	private String re_payment;
	
	private int time_no;
	private String time_start;
	private String time_end;
	
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Reservation(int re_no, int re_branch, String re_name, String re_tel1, String re_tel2, String re_tel3,
			String re_pwd, String re_date, int re_stadium, int re_time, String re_totalpay, String re_memo,
			String re_payment, int time_no, String time_start, String time_end) {
		super();
		this.re_no = re_no;
		this.re_branch = re_branch;
		this.re_name = re_name;
		this.re_tel1 = re_tel1;
		this.re_tel2 = re_tel2;
		this.re_tel3 = re_tel3;
		this.re_pwd = re_pwd;
		this.re_date = re_date;
		this.re_stadium = re_stadium;
		this.re_time = re_time;
		this.re_totalpay = re_totalpay;
		this.re_memo = re_memo;
		this.re_payment = re_payment;
		this.time_no = time_no;
		this.time_start = time_start;
		this.time_end = time_end;
	}

	public int getRe_no() {
		return re_no;
	}

	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}

	public int getRe_branch() {
		return re_branch;
	}

	public void setRe_branch(int re_branch) {
		this.re_branch = re_branch;
	}

	public String getRe_name() {
		return re_name;
	}

	public void setRe_name(String re_name) {
		this.re_name = re_name;
	}

	public String getRe_tel1() {
		return re_tel1;
	}

	public void setRe_tel1(String re_tel1) {
		this.re_tel1 = re_tel1;
	}

	public String getRe_tel2() {
		return re_tel2;
	}

	public void setRe_tel2(String re_tel2) {
		this.re_tel2 = re_tel2;
	}

	public String getRe_tel3() {
		return re_tel3;
	}

	public void setRe_tel3(String re_tel3) {
		this.re_tel3 = re_tel3;
	}

	public String getRe_pwd() {
		return re_pwd;
	}

	public void setRe_pwd(String re_pwd) {
		this.re_pwd = re_pwd;
	}

	public String getRe_date() {
		return re_date;
	}

	public void setRe_date(String re_date) {
		this.re_date = re_date;
	}

	public int getRe_stadium() {
		return re_stadium;
	}

	public void setRe_stadium(int re_stadium) {
		this.re_stadium = re_stadium;
	}

	public int getRe_time() {
		return re_time;
	}

	public void setRe_time(int re_time) {
		this.re_time = re_time;
	}

	public String getRe_totalpay() {
		return re_totalpay;
	}

	public void setRe_totalpay(String re_totalpay) {
		this.re_totalpay = re_totalpay;
	}

	public String getRe_memo() {
		return re_memo;
	}

	public void setRe_memo(String re_memo) {
		this.re_memo = re_memo;
	}

	public String getRe_payment() {
		return re_payment;
	}

	public void setRe_payment(String re_payment) {
		this.re_payment = re_payment;
	}

	public int getTime_no() {
		return time_no;
	}

	public void setTime_no(int time_no) {
		this.time_no = time_no;
	}

	public String getTime_start() {
		return time_start;
	}

	public void setTime_start(String time_start) {
		this.time_start = time_start;
	}

	public String getTime_end() {
		return time_end;
	}

	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
}
