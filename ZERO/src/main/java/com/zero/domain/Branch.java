package com.zero.domain;

public class Branch {
	//ÁöÁ¡
	private int BRANCH_NO;
	private String BRANCH_CODE;
	private String BRANCH_NAME;
	private String BRANCH_ADDRESS;
	private String BRANCH_TELL;
	private String BRANCH_PIC;
	
	private Reservation reservation;

	public Branch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Branch(int bRANCH_NO, String bRANCH_CODE, String bRANCH_NAME, String bRANCH_ADDRESS, String bRANCH_TELL,
			String bRANCH_PIC, Reservation reservation) {
		super();
		BRANCH_NO = bRANCH_NO;
		BRANCH_CODE = bRANCH_CODE;
		BRANCH_NAME = bRANCH_NAME;
		BRANCH_ADDRESS = bRANCH_ADDRESS;
		BRANCH_TELL = bRANCH_TELL;
		BRANCH_PIC = bRANCH_PIC;
		this.reservation = reservation;
	}

	public int getBRANCH_NO() {
		return BRANCH_NO;
	}

	public void setBRANCH_NO(int bRANCH_NO) {
		BRANCH_NO = bRANCH_NO;
	}

	public String getBRANCH_CODE() {
		return BRANCH_CODE;
	}

	public void setBRANCH_CODE(String bRANCH_CODE) {
		BRANCH_CODE = bRANCH_CODE;
	}

	public String getBRANCH_NAME() {
		return BRANCH_NAME;
	}

	public void setBRANCH_NAME(String bRANCH_NAME) {
		BRANCH_NAME = bRANCH_NAME;
	}

	public String getBRANCH_ADDRESS() {
		return BRANCH_ADDRESS;
	}

	public void setBRANCH_ADDRESS(String bRANCH_ADDRESS) {
		BRANCH_ADDRESS = bRANCH_ADDRESS;
	}

	public String getBRANCH_TELL() {
		return BRANCH_TELL;
	}

	public void setBRANCH_TELL(String bRANCH_TELL) {
		BRANCH_TELL = bRANCH_TELL;
	}

	public String getBRANCH_PIC() {
		return BRANCH_PIC;
	}

	public void setBRANCH_PIC(String bRANCH_PIC) {
		BRANCH_PIC = bRANCH_PIC;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}
	
	
	
	
	
}
