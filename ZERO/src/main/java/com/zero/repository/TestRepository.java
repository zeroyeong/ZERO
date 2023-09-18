package com.zero.repository;

import java.util.List;

import com.zero.domain.Sample;

/* 상속받아 구현하기 위해서 interface 클래스 인 BookRepository 를 생성하고
 * getAllBookList() 추상메서드를 생성합니다. */
public interface TestRepository {
	
	List<Sample> getList();
	
	public void setNewSample(Sample sample);
	
	public Sample getListNum(int objNum);
	
	public void updateSample(Sample sample);
	
	public void deleteSample(int objNum);
}
