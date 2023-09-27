package com.zero.domain;

public class Faq {
	
	private int faqNo;
	private String faqTitle;
	private String faqContent;
	private int faqHit;
	private String faqDate;
	
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public int getFaqHit() {
		return faqHit;
	}
	public void setFaqHit(int faqHit) {
		this.faqHit = faqHit;
	}
	public String getFaqDate() {
		return faqDate;
	}
	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}
	public Faq(int faqNo, String faqTitle, String faqContent, int faqHit, String faqDate) {
		super();
		this.faqNo = faqNo;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.faqHit = faqHit;
		this.faqDate = faqDate;
	}
	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
