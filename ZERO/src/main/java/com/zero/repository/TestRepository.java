package com.zero.repository;

import java.util.List;

import com.zero.domain.Sample;

/* ��ӹ޾� �����ϱ� ���ؼ� interface Ŭ���� �� BookRepository �� �����ϰ�
 * getAllBookList() �߻�޼��带 �����մϴ�. */
public interface TestRepository {
	
	List<Sample> getList();
	
	public void setNewSample(Sample sample);
	
	public Sample getListNum(int objNum);
	
	public void updateSample(Sample sample);
	
	public void deleteSample(int objNum);
}
