package com.zero.domain;

public class Branch {
	//지점
	private int BRANCH_NO;
	private String BRANCH_CODE;
	private String BRANCH_NAME;
	private String BRANCH_ADDRESS;
	private String BRANCH_TELL;
	private String BRANCH_PIC;
	//예약
	private int RE_NO;
	private int RE_BRANCH;
	private String RE_NAME;
	private String RE_TEL1;
	private String RE_TEL2;
	private String RE_TEL3;
	private String RE_PWD;
	private String RE_DATE;
	private int RE_STADIUM;
	private int RE_TIME;
	private String RE_TOTALPAY;
	private String RE_MEMO;
	private String RE_PAYMENT;
	//시간
	private int TIME_NO;
	private String TIME_START;
	private String TIME_END;
	//구장
	private int STADIUM_NO;
	private String STADIUM_NAME;
	private String STADIUM_SIZE;
	
	public Branch() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Branch(int bRANCH_NO, String bRANCH_CODE, String bRANCH_NAME, String bRANCH_ADDRESS, String bRANCH_TELL,
			String bRANCH_PIC, int rE_NO, int rE_BRANCH, String rE_NAME, String rE_TEL1, String rE_TEL2, String rE_TEL3,
			String rE_PWD, String rE_DATE, int rE_STADIUM, int rE_TIME, String rE_TOTALPAY, String rE_MEMO,
			String rE_PAYMENT, int tIME_NO, String tIME_START, String tIME_END, int sTADIUM_NO, String sTADIUM_NAME,
			String sTADIUM_SIZE) {
		super();
		BRANCH_NO = bRANCH_NO;
		BRANCH_CODE = bRANCH_CODE;
		BRANCH_NAME = bRANCH_NAME;
		BRANCH_ADDRESS = bRANCH_ADDRESS;
		BRANCH_TELL = bRANCH_TELL;
		BRANCH_PIC = bRANCH_PIC;
		RE_NO = rE_NO;
		RE_BRANCH = rE_BRANCH;
		RE_NAME = rE_NAME;
		RE_TEL1 = rE_TEL1;
		RE_TEL2 = rE_TEL2;
		RE_TEL3 = rE_TEL3;
		RE_PWD = rE_PWD;
		RE_DATE = rE_DATE;
		RE_STADIUM = rE_STADIUM;
		RE_TIME = rE_TIME;
		RE_TOTALPAY = rE_TOTALPAY;
		RE_MEMO = rE_MEMO;
		RE_PAYMENT = rE_PAYMENT;
		TIME_NO = tIME_NO;
		TIME_START = tIME_START;
		TIME_END = tIME_END;
		STADIUM_NO = sTADIUM_NO;
		STADIUM_NAME = sTADIUM_NAME;
		STADIUM_SIZE = sTADIUM_SIZE;
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

	public int getRE_NO() {
		return RE_NO;
	}

	public void setRE_NO(int rE_NO) {
		RE_NO = rE_NO;
	}

	public int getRE_BRANCH() {
		return RE_BRANCH;
	}

	public void setRE_BRANCH(int rE_BRANCH) {
		RE_BRANCH = rE_BRANCH;
	}

	public String getRE_NAME() {
		return RE_NAME;
	}

	public void setRE_NAME(String rE_NAME) {
		RE_NAME = rE_NAME;
	}

	public String getRE_TEL1() {
		return RE_TEL1;
	}

	public void setRE_TEL1(String rE_TEL1) {
		RE_TEL1 = rE_TEL1;
	}

	public String getRE_TEL2() {
		return RE_TEL2;
	}

	public void setRE_TEL2(String rE_TEL2) {
		RE_TEL2 = rE_TEL2;
	}

	public String getRE_TEL3() {
		return RE_TEL3;
	}

	public void setRE_TEL3(String rE_TEL3) {
		RE_TEL3 = rE_TEL3;
	}

	public String getRE_PWD() {
		return RE_PWD;
	}

	public void setRE_PWD(String rE_PWD) {
		RE_PWD = rE_PWD;
	}

	public String getRE_DATE() {
		return RE_DATE;
	}

	public void setRE_DATE(String rE_DATE) {
		RE_DATE = rE_DATE;
	}

	public int getRE_STADIUM() {
		return RE_STADIUM;
	}

	public void setRE_STADIUM(int rE_STADIUM) {
		RE_STADIUM = rE_STADIUM;
	}

	public int getRE_TIME() {
		return RE_TIME;
	}

	public void setRE_TIME(int rE_TIME) {
		RE_TIME = rE_TIME;
	}

	public String getRE_TOTALPAY() {
		return RE_TOTALPAY;
	}

	public void setRE_TOTALPAY(String rE_TOTALPAY) {
		RE_TOTALPAY = rE_TOTALPAY;
	}

	public String getRE_MEMO() {
		return RE_MEMO;
	}

	public void setRE_MEMO(String rE_MEMO) {
		RE_MEMO = rE_MEMO;
	}

	public String getRE_PAYMENT() {
		return RE_PAYMENT;
	}

	public void setRE_PAYMENT(String rE_PAYMENT) {
		RE_PAYMENT = rE_PAYMENT;
	}

	public int getTIME_NO() {
		return TIME_NO;
	}

	public void setTIME_NO(int tIME_NO) {
		TIME_NO = tIME_NO;
	}

	public String getTIME_START() {
		return TIME_START;
	}

	public void setTIME_START(String tIME_START) {
		TIME_START = tIME_START;
	}

	public String getTIME_END() {
		return TIME_END;
	}

	public void setTIME_END(String tIME_END) {
		TIME_END = tIME_END;
	}

	public int getSTADIUM_NO() {
		return STADIUM_NO;
	}

	public void setSTADIUM_NO(int sTADIUM_NO) {
		STADIUM_NO = sTADIUM_NO;
	}

	public String getSTADIUM_NAME() {
		return STADIUM_NAME;
	}

	public void setSTADIUM_NAME(String sTADIUM_NAME) {
		STADIUM_NAME = sTADIUM_NAME;
	}

	public String getSTADIUM_SIZE() {
		return STADIUM_SIZE;
	}

	public void setSTADIUM_SIZE(String sTADIUM_SIZE) {
		STADIUM_SIZE = sTADIUM_SIZE;
	}

	

	
	
}
