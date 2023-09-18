package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.domain.Sample;
import com.zero.repository.TestRepository;

/* ���� ������ ���������̼� ����(view) �� �۽ý��Ͻ� ����(�޼��� ���ǵ� Repository) ���̸� �����մϴ�.
 * @Service �� ���� �մϴ�. */
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
