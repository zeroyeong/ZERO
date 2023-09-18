package com.zero.service;

import java.util.List;

import com.zero.domain.Sample;

public interface TestService {
	
	List<Sample> getList();
	
	public void setNewSample(Sample sample);
	
	public Sample getListNum(int objNum);
	
	public void updateSample(Sample sample);
	
	public void deleteSample(int objNum);
}
 