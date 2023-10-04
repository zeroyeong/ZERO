package com.zero.domain;

import org.springframework.web.multipart.MultipartFile;

public class Notice {
	
	private int notNo;
	private String notTitle;
	private String notWriter;
	private String notPass;
	private String notContent;
	private int notHit;
	private String notDate;
	private String notFile;
	private MultipartFile fileName;
	
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Notice(int notNo, String notTitle, String notWriter, String notPass, String notContent, int notHit,
			String notDate, String notFile, MultipartFile fileName) {
		super();
		this.notNo = notNo;
		this.notTitle = notTitle;
		this.notWriter = notWriter;
		this.notPass = notPass;
		this.notContent = notContent;
		this.notHit = notHit;
		this.notDate = notDate;
		this.notFile = notFile;
		this.fileName = fileName;
	}


	public int getNotNo() {
		return notNo;
	}
	public void setNotNo(int notNo) {
		this.notNo = notNo;
	}
	public String getNotTitle() {
		return notTitle;
	}
	public void setNotTitle(String notTitle) {
		this.notTitle = notTitle;
	}
	public String getNotWriter() {
		return notWriter;
	}
	public void setNotWriter(String notWriter) {
		this.notWriter = notWriter;
	}
	public String getNotPass() {
		return notPass;
	}
	public void setNotPass(String notPass) {
		this.notPass = notPass;
	}
	public String getNotContent() {
		return notContent;
	}
	public void setNotContent(String notContent) {
		this.notContent = notContent;
	}
	public int getNotHit() {
		return notHit;
	}
	public void setNotHit(int notHit) {
		this.notHit = notHit;
	}
	public String getNotDate() {
		return notDate;
	}
	public void setNotDate(String notDate) {
		this.notDate = notDate;
	}
	public String getNotFile() {
		return notFile;
	}
	public void setNotFile(String notFile) {
		this.notFile = notFile;
	}
	public MultipartFile getFileName() {
		return fileName;
	}
	public void setFileName(MultipartFile fileName) {
		this.fileName = fileName;
	}
	
	


}
