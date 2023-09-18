package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Sample;
import com.zero.repository.TestRepository;

/* 서비스 계층은 프레젠테이션 계층(view) 과 퍼시스턴스 계층(메서드 정의된 Repository) 사이를 연결합니다.
 * @Service 로 정의 합니다. */
@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	 private TestRepository testRepository;
	
	@Override
	public List<Sample> getList() {
		 return testRepository.getList();
	}  
	
	@Override
	public void setNewSample(Sample sample) {
		testRepository.setNewSample(sample);
	}
	
	@Override
	public Sample getListNum(int objNum) {
		Sample sample = testRepository.getListNum(objNum);
		System.out.println("service = " + sample);
		return sample;
	}
	
	@Override
	public void updateSample(Sample sample) {
	
		testRepository.updateSample(sample);
	}
	
	@Override
	public void deleteSample(int objNum) {
		
		testRepository.deleteSample(objNum);
	}
}
