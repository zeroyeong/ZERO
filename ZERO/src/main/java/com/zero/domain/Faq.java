package com.zero.domain;

public class Faq {
	
	private int faq_no;
	private String faq_title;
	private String faq_content;
	private int faq_hit;
	private String faq_date;
	
	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Faq(int faq_no, String faq_title, String faq_content, int faq_hit, String faq_date) {
		super();
		this.faq_no = faq_no;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
		this.faq_hit = faq_hit;
		this.faq_date = faq_date;
	}

	public int getFaq_no() {
		return faq_no;
	}

	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public int getFaq_hit() {
		return faq_hit;
	}

	public void setFaq_hit(int faq_hit) {
		this.faq_hit = faq_hit;
	}

	public String getFaq_date() {
		return faq_date;
	}

	public void setFaq_date(String faq_date) {
		this.faq_date = faq_date;
	}
	
	
	

}
