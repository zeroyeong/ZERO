package com.zero.domain;

import org.springframework.web.multipart.MultipartFile;

public class Notice {
	
	private int notice_no;
	private String notice_title;
	private String notice_content;
	private int notice_hit;
	private String notice_date;
	private MultipartFile notice_imagefile;
	private String notice_imagename;
	
	private String keyword;
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notice(int notice_no, String notice_title, String notice_content, int notice_hit, String notice_date,
			MultipartFile notice_imagefile, String notice_imagename, String keyword) {
		super();
		this.notice_no = notice_no;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_hit = notice_hit;
		this.notice_date = notice_date;
		this.notice_imagefile = notice_imagefile;
		this.notice_imagename = notice_imagename;
		this.keyword = keyword;
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public int getNotice_hit() {
		return notice_hit;
	}

	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}

	public String getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}

	public MultipartFile getNotice_imagefile() {
		return notice_imagefile;
	}

	public void setNotice_imagefile(MultipartFile notice_imagefile) {
		this.notice_imagefile = notice_imagefile;
	}

	public String getNotice_imagename() {
		return notice_imagename;
	}

	public void setNotice_imagename(String notice_imagename) {
		this.notice_imagename = notice_imagename;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
