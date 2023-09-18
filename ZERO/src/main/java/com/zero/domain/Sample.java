package com.zero.domain;

import org.springframework.web.multipart.MultipartFile;

public class Sample {
    
	private String objNum;

	private String obj1;
	private int obj2;
	private String obj3;
	private MultipartFile sampleImage;
	private String objFile;

	public Sample() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Sample(String obj1, int obj2, String obj3) {
		super();
		this.obj1 = obj1;
		this.obj2 = obj2;
		this.obj3 = obj3;
	}
	
	public String getObjNum() {
		return objNum;
	}

	public void setObjNum(String objNum) {
		this.objNum = objNum;
	}
	
	public String getObj1() {
		return obj1;
	}
	public void setObj1(String obj1) {
		this.obj1 = obj1;
	}
	public int getObj2() {
		return obj2;
	}
	public void setObj2(int obj2) {
		this.obj2 = obj2;
	}
	public String getObj3() {
		return obj3;
	}
	public void setObj3(String obj3) {
		this.obj3 = obj3;
	}
	
	public String getObjFile() {
		return objFile;
	}

	public void setObjFile(String objFile) {
		this.objFile = objFile;
	}
	
	public MultipartFile getSampleImage() {
		return sampleImage;
	}

	public void setSampleImage(MultipartFile sampleImage) {
		this.sampleImage = sampleImage;
	}
}
